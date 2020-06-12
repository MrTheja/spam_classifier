function data = datasetMaker(folderName)

cd(folderName);
nameList = [ls];
cd ..;

folder = strcat(folderName,'/');

b = [];

for item = [1:size(nameList)(1)]
    item
    file = readFile(strcat(folder, nameList(item,:)));
    file = processEmail(file);
    b = [b; file];
end

data = b;
