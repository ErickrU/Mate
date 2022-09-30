function n_perfecto
cot=0;
for n=1:200 % aqui le cambias para obetener los numeros perfectos entre el rango deseado en tu caso 200
    s=0;
    for i=1:n-1
    if rem(n,i)==0
        i;
        s=s+i;
    end
    end
    if n==s
    n;
    cot=cot+1;
    z=true;
    [n s]
    else
    z=false;
    end
end
disp('la cantidad de valores es:');
disp(cot);
end
