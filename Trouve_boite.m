function Boite_correspondante=Trouve_boite(descripteur)
            Ensemble_intermediaire=[self.Matrice_de_reference(:,:), descripteur(:,:)];
            Repartition =kmeans(Ensemble_intermediaire',20);
            Boite_correspondante=Repartition(end);
            
end