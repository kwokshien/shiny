#ui.R
library(shiny)
require(rCharts)
require(devtools)
options(RCHART_LIB = 'polycharts')
shinyUI(pageWithSidebar(
  headerPanel("Bilangan Kes Denggi Yang Dilaporkan Pada Tahun 2010"),
  
  sidebarPanel(
    selectInput(inputId="negeri",
                label = "Pilih Negeri",
                choices = sort(unique(new_df$NEGERI)),
                selected = "PERLIS",
                )
              ),
  
    mainPanel(showOutput("chart1","polycharts"))
  
  
  )
  )
