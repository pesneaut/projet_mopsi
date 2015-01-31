function database_creator(database)
Dossier=uigetdir;
liste = dir(Dossier);
for i=3:length(liste)
    nom = liste(i).name;
    ext = ['\' nom];
    file = [Dossier ext];
    if strcmp(file(end-2:end),'jpg')
        I=imread(file);
        database.Ajoute_image_DB(I);
    elseif strcmp(file(end-2:end),'peg')
        I=imread(file);
        database.Ajoute_image_DB(I);
    elseif strcmp(file(end-2:end),'png')
        I=imread(file);
        database.Ajoute_image_DB(I);
    end
end