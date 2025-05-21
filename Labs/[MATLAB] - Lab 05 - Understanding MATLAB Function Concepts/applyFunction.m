function result=applyFunction (func , vec) 
    result = zeros(size(vec));
    for i=1 : length(vec)
        result(1,i)= func(vec(i));
    end
end