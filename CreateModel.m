function model=CreateModel(fileName)

file = fopen(fileName);
tline = fgetl(file);
n = str2double(tline);
fclose(file);

w = dlmread(fileName,'%d %d', [2 0 n+1 n-1]);    
d = dlmread(fileName,'%d %d', [n+2 0 (n*2 + 1) n-1]);    
    
    model.n=n;
    model.w=w;
    model.d=d;
end