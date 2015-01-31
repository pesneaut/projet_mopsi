function Matrice_descripteur = Image_descripts( Image)
I=rgb2gray(Image);
  %l'autre demande un type single , on ne prend pas de risque en theorie
I=single(I);            % get luminance
[F,Descripts]=vl_sift(I);
Descripts=double(Descripts);
[h w]=size(Descripts);
m=min(20,w);
if m<20
    m
end
[Repartition,Matrice_descripteur]=kmeans(Descripts',20);
Matrice_descripteur=Matrice_descripteur';
end

