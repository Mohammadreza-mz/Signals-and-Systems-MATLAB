clc; clear;
%%%%%%%%%%% READ THE INPUT IMAGE %%%%%%%%%%%
img = imread('images/bengio.jpeg');
img2=  rgb2gray(img);
%%%%%%%%%%% DEFINE FILTERS %%%%%%%%%%%
horizontal_edge = [[-1,-1,-1];
                   [0,0,0];
                   [1,1,1]];
               
vertical_edge = [[-1,0,1];
                 [-1,0,1];
                 [-1,0,1]];
             
sharpening = [[0,-1,0];
              [-1,5,-1];
              [0,-1,0]];
          
sobel_horizontal = [[-1,-2,-1];
                    [0,0,0];
                    [1,2,1]];
sobel_vertical = [[-1,0,1];
                  [-2,0,2];
                  [-1,0,1]];
              
gaussian_5x5 = (1/273)*[[1,4,7,4,1];
                        [4,16,26,16,4];
                        [7,26,41,26,7];
                        [4,16,26,16,4];
                        [1,4,7,4,1]];
                    
averaging_7x7 = (1/49)*ones(7,7);
              
%%%%%%%%%%% PARAMETERS SETTING %%%%%%%%%%%
%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%
img= imread('images/bengio.jpeg');
filters = gaussian_5x5;
showAns(img, filters, 1, "valid");

img= imread('images/leskovec.jpeg');
filters = cat(3, horizontal_edge, vertical_edge);
showAns(img, filters, 2, "same");


img= imread('images/andrew.jpeg');
filters = cat(3, sharpening, sobel_vertical, sobel_horizontal);
showAns(img, filters, 2, "same");


img= imread('images/goodfellow.jpeg');
filters = averaging_7x7;
showAns(img, filters, 3, "valid");
%%%%%%%%%%% YOUR CODE HERE %%%%%%%%%%%