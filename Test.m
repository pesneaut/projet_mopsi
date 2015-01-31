Data_base=Ensemble;
Irgb = double(imread('images/1.jpg')); % On recup¿re l'image
0
Data_base.Ajoute_image_DB(Irgb);
1

Irgb = double(imread('images/2.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
2

Irgb = double(imread('images/3.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
3

Irgb = double(imread('images/9.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
4

Irgb = double(imread('images/7.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
5

Irgb = double(imread('images/8.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
6

%Irgb = double(imread('images/10.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


%Irgb = double(imread('images/11.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


%Irgb = double(imread('images/12.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


Irgb = double(imread('images/13.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
7

Irgb = double(imread('images/14.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
8

Irgb = double(imread('images/15.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
9

Irgb = double(imread('images/16.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
10

Irgb = double(imread('images/17.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
11

Irgb = double(imread('images/18.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
12

%Irgb = double(imread('images/19.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


Irgb = double(imread('images/20.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
13

Irgb = double(imread('images/21.jpg')); % On recup¿re l'image
Data_base.Ajoute_image_DB(Irgb);
14




%Irgb = double(imread('images/22.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


%Irgb = double(imread('images/23.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


%Irgb = double(imread('images/24.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


%Irgb = double(imread('images/25.jpg')); % On recup¿re l'image
%Data_base.Ajoute_image_DB(Irgb);


Data_base.Rempli_base_de_donne();
15
Irgb = double(imread('images/14.jpg'));
16
test=Data_base.Trouve_images(Irgb)