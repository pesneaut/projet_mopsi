function database_creator()
Dossier=uigetdir;
liste = dir(Dossier);
for i=3:length(liste)
    nom = liste(i).name;
    ext = ['\' nom];
    file = [Dossier ext];
    if strcmp(file(end-2:end),'jpg')
        I=imread(file);
        figure(i);
        imagesc(I);
        axis image off;
    elseif strcmp(file(end-2:end),'peg')
        I=imread(file);
        figure(i);
        imagesc(I);
        axis image off;
    elseif strcmp(file(end-2:end),'png')
        I=imread(file);
        figure(i);
        imagesc(I);
        axis image off;
    end
end