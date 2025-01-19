function [S_x, S_y, S_z] = projspin(S)
% this function outputs x, y, z components of spin-S vector operator 
    arguments
        S           (1,1) double {mustBeSpinNum}
    end        
    
    dim = 2*S + 1;
    k = 1 : 2*S; 
    v = sqrt(k .* (dim-k));          
    
    S_m = diag(v,-1);       % spin lowering ladder operator 
    S_p = diag(v,+1);       % spin raising  ladder operator 
    S_x = (S_p + S_m) / 2;
    S_y = (S_p - S_m) / 2i;
    S_z = diag(S:-1:-S);
end

function mustBeSpinNum(S)
    if  mod(2*S,1) || S<0
        eidType = 'InvalidArgument:MustBeSpin';
        msgtext = 'Spin value must be non-negative integer or half-integer number';
        throw(MException(eidType,msgtext))
    end
end 