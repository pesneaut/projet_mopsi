function Matrice_descripteur = Image_descripts( Image)
I=rgb2gray(Image);
  %l'autre demande un type single , on ne prend pas de risque en theorie
I=single(I);            % get luminance
[F,Descripts]=vl_sift(I);
Descripts=double(Descripts);
[h w]=size(Descripts);
take=min(20,w);%Reste à déterminer si 20 est un seuil judicieux
if take==20
    Descripts=Descripts';
    [Repartition,Matrice_descripteur]=kmeans(Descripts,20);
    Matrice_descripteur=Matrice_descripteur';
elseif take<20
%     Descripts=Descripts';
%     Descripts_complete = zeros(20,h);
%     Descripts_complete(1:w,:)=Descripts;
    [Repartition,Matrice_descripteur]=kmeans(Descripts,w);%Matrice_descripteur ne contient que w centroïdes
    Matrice_complete = zeros(20,h);
    Matrice_complete(1:w,:)=Matrice_descripteur;
    Matrice_complete((w+1):end,h)=NaN;%On complète la matrice avec des NaN
    Matrice_descripteur = Matrice_complete;
end
end

