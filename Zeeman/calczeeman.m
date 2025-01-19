function E_hf = calczeeman(g_I, g_S, A_hf, I, J, B_q)
    mu_B = PhysicsConstants.mu_B;
    [I_x, I_y, I_z] = projspin(I);
    [J_x, J_y, J_z] = projspin(J);
    dim_I = 2*I + 1;
    dim_J = 2*J + 1;
    dim = dim_J * dim_I;
    
    E_hf = nan(numel(B_q), dim_J * dim_I);
    
    H_hf_B = @(B) ((A_hf * (kron(J_x,I_x) + kron(J_y,I_y) + kron(J_z,I_z)) ...
                  - g_I * mu_B * B * kron(eye(dim_J), I_z)...
                  + g_S * mu_B * B * kron(J_z, eye(dim_I))));
    state_prev = nan([dim dim]);
    for i_b = 1 : numel(B_q)
        B_i = B_q(i_b);
        H_hf = H_hf_B(B_i) / PhysicsConstants.h / 1e6;
        [V_hf_i, E_hf_i] = eig(H_hf);
        state_this = normalizestate(V_hf_i);
        if i_b > 1
            ord = matchstatesets(state_prev, state_this);
            state_this = state_this(:,ord);
        else
            ord = 1 : dim;
        end
        E_hf_i = diag(E_hf_i);
        E_hf_i = E_hf_i(ord);
        E_hf(i_b,:) = E_hf_i; 
        state_prev = state_this;
    end
end

function state = normalizestate(V) 
    state = V ./ sqrt(sum(abs(V' * V), 1));
end

function ord = matchstatesets(state_ref, state_new)
    correlation = abs(state_ref' * state_new) .^ 2;
    correlation = correlation./sum(correlation, 1);
    [~, ord] = max(correlation, [], 2);
    ord = unique(ord, 'stable');
    if numel(ord) < size(state_new, 1)
        error("Failed matching state.");
    end
end