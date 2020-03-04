######################################
########## Estadística con R #########
##########    Sesión 02     ##########
##########  Ejercicio 02    ##########
######################################
library(ggplot2)

breast.cancer <- read.csv('breast_cancer.csv')

str(breast.cancer)

breast.cancer.short <- breast.cancer[,c('diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean')]

media.radius <- mean(breast.cancer.short$radius_mean)

ggplot(breast.cancer.short, aes(radius_mean)) + 
  geom_histogram(colour = 'black', 
                 fill = 'blue',
                 alpha = 0.6,
                 binwidth = 0.3) + 
  geom_density(aes(y = 0.3*..count..))+
  geom_vline(xintercept=media.radius, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Radius Mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  


ggplot(breast.cancer.short, aes(radius_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'blue',
                 alpha = 0.6) + 
  geom_vline(xintercept=media.radius, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Radius Mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  +
  facet_wrap('diagnosis')



media.texture <- mean(breast.cancer.short$texture_mean)

ggplot(breast.cancer.short, aes(texture_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'green',
                 alpha = 0.6) + 
  geom_vline(xintercept=media, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Texture Mean') + 
  labs(x = 'Texture Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  

ggplot(breast.cancer.short, aes(texture_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'green',
                 alpha = 0.6) + 
  geom_vline(xintercept=media, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Texture Mean') + 
  labs(x = 'Texture Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  +
  facet_grid('diagnosis')

library(ggplot2)

breast.cancer <- read.csv('breast_cancer.csv')

str(breast.cancer)

breast.cancer.short <- breast.cancer[,c('diagnosis','radius_mean','texture_mean','perimeter_mean','area_mean')]

media.radius <- mean(breast.cancer.short$radius_mean)

ggplot(breast.cancer.short, aes(radius_mean)) + 
  geom_histogram(colour = 'black', 
                 fill = 'blue',
                 alpha = 0.6,
                 binwidth = 0.3) + 
  geom_density(aes(y = 0.3*..count..))+
  geom_vline(xintercept=media.radius, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Radius Mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  


ggplot(breast.cancer.short, aes(radius_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'blue',
                 alpha = 0.6) + 
  geom_vline(xintercept=media.radius, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Radius Mean') + 
  labs(x = 'Radius Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  +
  facet_wrap('diagnosis')



media.texture <- mean(breast.cancer.short$texture_mean)

ggplot(breast.cancer.short, aes(texture_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'green',
                 alpha = 0.6) + 
  geom_vline(xintercept=media, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Texture Mean') + 
  labs(x = 'Texture Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  

ggplot(breast.cancer.short, aes(texture_mean)) + 
  geom_histogram(bins = 23, 
                 colour = 'black', 
                 fill = 'green',
                 alpha = 0.6) + 
  geom_vline(xintercept=media, linetype="dashed", color = "red") + 
  ggtitle('Histogram for Texture Mean') + 
  labs(x = 'Texture Mean', y = 'Freq')+
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, size = 15))  +
  facet_grid('diagnosis')

