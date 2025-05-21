function  [Mean , STDDev] = computeStatistics(varargin)
A=zeros(1,nargin); 
for i=1 : nargin
    A(1,i)= varargin{i};
end
        Mean = mean(A)
        STDDev = std(A)
end