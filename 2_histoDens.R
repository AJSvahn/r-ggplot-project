##Histogram and density(relative frequency), frequency polygon

library(tidyverse)
interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

interview_plot_6_bar<- ggplot(data = interviews_plotting, aes(x=no_membrs, fill=village))+
  geom_histogram(binwidth = 1, color='white')
interview_plot_6_bar

interview_plot_7_freqPol<- ggplot(data = interviews_plotting, aes(x=no_membrs, color=village))+
  geom_freqpoly(binwidth = 1)
interview_plot_7_freqPol

interview_plot_8_relFreq<- ggplot(data = interviews_plotting, aes(x=no_membrs, y=stat(density), color=village))+
  geom_freqpoly(binwidth = 1) #Note the change in y axis on plot
interview_plot_8_relFreq

interview_plot_9_dens<- ggplot(data = interviews_plotting, aes(x=no_membrs, fill=village))+
  geom_density(alpha=0.5)    #Smooths out the distribution, note bins are now chosen by fn so integration of curve is 1
interview_plot_9_dens




