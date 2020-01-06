close all
clear all
clc

%Image should be RBG colored not black and white
M=imread('dog.bmp'); %Converts the .bmp file(image) into matrix
size(M); %dimensions of matrix
figure;
imshow(M); %displays the secret image
title('Secret Image');

level = graythresh(M) %takes the image and finds the threshold of the image to obtain black and white image from gray image
BW=im2bw(M,level); %converts RGB image to Black and White

figure;
imshow(BW); %displays black and white image

[S1 S2 S]=visual(BW); %calls the function which performs the secret sharing

imwrite(S1,'S1.bmp'); %creates new .bmp file of the share 1
imwrite(S2,'S2.bmp'); %creates new .bmp file of the share 2
imwrite(S,'S.bmp'); %creates new .bmp file of the secret obtained from share 1 and share 2


