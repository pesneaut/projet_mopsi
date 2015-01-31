%load('Database.mat');%charge une base de données
Data_base=Ensemble();

database_creator(Data_base);

save('Database.mat');%enregistre la base de données