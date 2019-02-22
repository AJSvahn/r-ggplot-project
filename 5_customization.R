#Customization

library(tidyverse)

interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

interview_plot_16_fillCustom<- ggplot(data=interviews_plotting, 
                           aes(fill=respondent_wall_type, x=village))+
  geom_bar(position = "fill")+
  stat_count(geom='text', aes(label=stat(count)),
             position = position_fill(vjust=0.5), color='black')+
  labs(y="Proportion", x="Village", title='Wall type by village')+
  scale_fill_discrete(labels=c("Burnt Bricks", "Cement", "Turtle Shells", "Sun Bricks"))+
  guides(fill= guide_legend(title='Wall type'))
#fill relates to the fill part of the aes object we called at the ggplot
interview_plot_16_fillCustom


interview_plot_17_fillFacetTheme<- ggplot(data=interviews_plotting, 
                                      aes(fill=memb_assoc, x=respondent_wall_type))+
  geom_bar(position = "fill")+
  stat_count(geom='text', aes(label=stat(count)),
             position = position_fill(vjust=0.5), color='black')+
  labs(y="Proportion", x="Wall type", title='Member association by wall type')+
  scale_fill_discrete(labels=c("No", "Yes", "What?"))+
  guides(fill= guide_legend(title='Member of\nAssociation'))+
  scale_x_discrete(labels=c("Burnt Bricks", "Cement", "Turtle Shells", "Sun Bricks"))+
  
  facet_wrap(~village, nrow=2)+
  
  theme_classic()+
  theme(axis.text.x = element_text(angle = 45, hjust = 1))+
  theme(axis.text.x = element_text(size = 8))+
  theme(plot.title = element_text(hjust = 0.5))
  

interview_plot_17_fillFacetTheme

custom_theme=theme(axis.text.x = element_text(color='red'),
                   plot.title = element_text(hjust=1))
interview_plot_17_fillFacetTheme + custom_theme

