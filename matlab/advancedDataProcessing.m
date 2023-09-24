%Open and read json file containing height information
fname = 'IowaCityHeight2.json'; 
fid = fopen(fname); 
raw = fread(fid,inf); 
str = char(raw'); 
fclose(fid); 
val = jsondecode(str);

%Set value for how large the json file is
resolution = 250;

%Initalize the graph
graph = pcolor(1:resolution, 1:resolution, val.data);

%Turn axis' off
axis equal
axis off


%Set Colors
set(graph, 'edgecolor', 'none');
colormap(parula);

%Save image
export_fig('IowaCity_Layered.png', '-transparent', '-png', '-native')