% Modification faites le samedi par Charles:
% Reduction des differentes tailels des ensembles pour passer de 2^16 à 100 ( pour cause de DB trop petite pour le moment )
% Ecriture d'une premiere version de recherche d'image très très très élementaire et qui n'utilise pas du tout tout le potentiel, la fonction Rempli_base_de_donnee ne sert à rien et on n'utilise que la matrice de reference, c etait juste pour tester l'idée .
% A faire : Trouver une façon de pas choisir le nombre de cluster de manière aléatoire ( certianes images ont plein de descripteurs, d autres non, il faut en tenir compte)
% cette fonction pourra être réutilisé dans rempli data base
% Faire une fonction de rcherche plsu optimsié et qui utilise les nouveaux cluster . '
classdef Ensemble <handle
    properties
        Matrice_de_reference;
        cardinal;
        Ensemble_boites;
        cardinal_boites;
    end
    methods
        function self= Ensemble()
            self.Matrice_de_reference=zeros(128,1);
            self.cardinal=0;
            self.Ensemble_boites=cell(100,1);
            self.cardinal_boites=zeros(100,1);
        end
        function Ajoute_image_DB(self,image)
        Matrices_descripteur = Image_descripts( image);
        self.Matrice_de_reference= [self.Matrice_de_reference(:,:), Matrices_descripteur(:,:)];
        self.cardinal=self.cardinal+1;
        end
        function Rempli_base_de_donne(self)
            Repartition=kmeans(self.Matrice_de_reference',100); % on repartit dans les 2^16 
            for i=1:size(Repartition)
                image=ceil(i/20);
                Numero_cluster=Repartition(i);
                self.Ensemble_boites{Numero_cluster}=[self.Ensemble_boites{Numero_cluster},image];
                self.cardinal_boites(Numero_cluster)=self.cardinal_boites(Numero_cluster)+1;
            end
        end
        function Boite_correspondante=Trouve_boite(self,descripteur)
            Ensemble_intermediaire=[self.Matrice_de_reference(:,:), descripteur(:,:)];
            Repartition =kmeans(Ensemble_intermediaire',100);
            Boite_correspondante=Repartition(end);
            
        end
        function Liste_images=Trouve_images(self,Image) % cette version est amenée a etre entierement reecrite vu qu'elle n'utilise pas du tout le reste et qu'elle est, de fait, très très brutale'
            I=rgb2gray(Image);
         %l'autre demande un type single , on ne prend pas de risque en theorie
            I=single(I);            % get luminance
            [F,Descripts]=vl_sift(I); %% on calcule le descripteur de l'image'
            
            Liste_images=zeros(self.cardinal,1);  % dans cette liste on va stocker le nombre de fois ou l'un des descripteur est proche de celui d'une autre image
            %for i=1:W
             %  descript=double(Descripts(:,i));
              % Numero_boite=self.Trouve_boite(descript);
              % Boite_correspondante=self.Ensemble_boites{Numero_boite};
              % for j=1:size(Boite_correspondante)
               %    numero_image=Boite_correspondante(j);
                %   Liste_images(numero_image)=Liste_images(numero_image)+1;
               %end
            %end
            correspondance = dsearchn(double(self.Matrice_de_reference'),double(Descripts')); %% regarde la doc de dsearchn mais normalement c est ce que j ai essayé de t expliquer, il renvoit la position des vecteurs les plus proches sur la matrice de reference
            for i=1:size(correspondance)
                position=ceil(correspondance(i)/20); %% vu la facon dont la matrice de referecne est construite, on peut retrouver les images
                Liste_images(position)=Liste_images(position)+1;
            end
            
            [correspondante order] = sort(Liste_images,'descend'); %% on tri
            Liste_images = order(1:5); %% et on renvoit les 5 images les plus rencontrées
            
            
        end
    end
end

            