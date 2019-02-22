library(tidyverse)

interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

interview_plot_18<- ggplot(data=interviews_plotting, aes(x=affect_conflicts, fill=memb_assoc))+
  geom_histogram(stat = 'count', position = position_dodge())
interview_plot_18
