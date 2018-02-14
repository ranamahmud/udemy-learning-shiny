
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
#
# http://shiny.rstudio.com
#

library(shiny)
library(shinythemes)
library(DT)
shinyUI(fluidPage(theme=shinytheme("sandstone"),
                  title = h3("The missing stock scale"),
                  wellPanel(
                    sliderInput("w1","Weight on Grade 1",value=7,min=0,max=20),
                    
                    sliderInput("w2","Weight on Grade 2",value=2,min=0,max=20),
                    
                    sliderInput("w3","Weight on Grade 3",value=0.6,min=0,max=2,step=0.2)
                  ),
                  plotOutput("scat",brush="user_brush"),
                  dataTableOutput("table"),
                  downloadButton("mydownload","Download")

  
  
  )

)