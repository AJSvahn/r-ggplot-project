
library(tidyverse)
interviews_plotting<-read_csv("data_output/interviews_plotting.csv")

interview_plot<-ggplot(data=interviews_plotting, aes(x=no_membrs, y=number_items))

interview_plot+geom_jitter(alpha = 0.5, width = 0.15, height = 0.15)