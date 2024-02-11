function modulus = exp_modulo(a,e,M)
    if e>4
        i = 1;
        value = 1;
        while(e>2)
            arr(i) = 2;
            e = e - 2;
            i = i + 1;
        end
            arr(i) = e;
        for x = 1:length(arr)
            value1 = mod(a^arr(x),M);
            value = mod(value*value1,M);
        end
        modulus = value;
    else
        modulus = mod(a^e,M);
    end
end