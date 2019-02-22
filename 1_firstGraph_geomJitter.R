
library(tidyverse)
interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

interview_plot<-ggplot(data=interviews_plotting, aes(x=no_membrs, y=number_items))
interview_plot+geom_jitter(alpha = 0.5, width = 0.15, height=0.15)


#ggsave('1_geomJitter_v2_saveMethod.svg', interview_plot, device='svg',units = 'mm'  ,width = 100, height = 100, dpi = 300)

interview_plot2_dotSize<-ggplot(data=interviews_plotting, aes(x=no_membrs, y=number_items))+geom_jitter(alpha = 0.5, width = 0.15, height=0.15, size=5)
interview_plot_dotSize

interview_plot3_colour<-ggplot(data=interviews_plotting, aes(x=no_membrs, y=number_items, color=village))+
  geom_jitter(alpha = 0.5, width = 0.15, height=0.15, size=3)
interview_plot3_colour

interview_plot4_regression<-ggplot(data=interviews_plotting, aes(x=no_membrs, y=number_items, color=village))+
  geom_jitter(alpha = 0.5, width = 0.15, height=0.15, size=3)+
  geom_smooth(method='lm')
interview_plot4_regression

