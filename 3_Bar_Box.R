#Bar charts and box graphs

library(tidyverse)

interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

interview_plot_10_bar<-ggplot(data=interviews_plotting, 
                          aes(x= respondent_wall_type, fill=village))+
  geom_bar(position='dodge')#+
  #facet_wrap(~ respondent_wall_type)
  
interview_plot_10_bar

interview_plot_11_barFill<-ggplot(data=interviews_plotting, 
                              aes(x= respondent_wall_type, fill=village))+
  geom_bar(position= 'fill')+
  ylab('Proportion')+
  stat_count(geom= 'text',
             aes(label=stat(count)),
             position= position_fill(vjust= 0.5), color= 'black')

interview_plot_11_barFill

interview_plot_12_Ex<-ggplot(data=interviews_plotting, 
                                  aes(x= village, fill=respondent_wall_type))+
  geom_bar(position='fill')+
  ylab('Proportion')+
  stat_count(geom='text',
             aes(label=stat(count)),
             position=position_fill(vjust=0.5), color='black')
interview_plot_12_Ex

interview_plot_13_Box<-ggplot(data=interviews_plotting, 
                             aes(x= respondent_wall_type, y=liv_count))+
  geom_boxplot(alpha=0.5)+
  geom_jitter(width=0.2, height=0.2, aes(color=village))
interview_plot_13_Box

interview_plot_14_Box_splitVar<-ggplot(data=interviews_plotting, 
                              aes(x= respondent_wall_type, y=liv_count, 
                                  fill=memb_assoc, color=memb_assoc))+
  geom_boxplot(alpha=0.5)+
  geom_point(alpha=0.5, position=position_jitterdodge(jitter.width =0.1, jitter.height = 0.1 ))
  
interview_plot_14_Box_splitVar


interview_plot_15_Box_violin<-ggplot(data=interviews_plotting, 
                                       aes(x= respondent_wall_type, y=rooms))+
  geom_violin(alpha=0.5)+
  geom_jitter(width =0.1, height = 0.1, colour='tomato' )

interview_plot_15_Box_violin

geom_violin()
