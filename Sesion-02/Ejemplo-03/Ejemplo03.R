######################################
########## Fundamentos de R ##########
##########    Sesión 02     ##########
##########  Ejercicio 03    ##########
######################################

library(ggplot2)
library(dplyr)

breast.cancer <- read.csv('breast_cancer.csv')

str(breast.cancer)

breast.cancer.short <- breast.cancer[,c('diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean')]

breast.cancer.short %>% 
  ggplot( aes(x = radius_mean, y = texture_mean, colour=diagnosis)) + 
  geom_point() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() 

breast.cancer.short %>% ggplot( aes(x = radius_mean, y = texture_mean)) + 
  geom_hex() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() + 
  scale_fill_gradient(low = 'white', high = 'red')

breast.cancer.short %>% ggplot( aes(x = radius_mean, y = texture_mean)) + 
  geom_hex() +
  ggtitle('Relacion Radius y Texture')+
  theme_minimal() + 
  scale_fill_gradient(low = 'white', high = 'red') + 
  facet_wrap('diagnosis')

