function [z, p]=MyCost(s, model)

    n=model.n;
    w=model.w;
    d=model.d;

    [~, p] = sort(s);
    p = p(1:n);
    
    z=0;
    for i=1:n
        for j=i+1:n
            z=z+w(i,j)*d(p(i),p(j));
        end
    end
end
