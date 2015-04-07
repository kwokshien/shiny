# server.R
library(shiny)
require(devtools)
require(rCharts)

shinyServer(function(input,output){
  output$chart1 <- renderChart2({
    new_df2 = subset(new_df,NEGERI == input$negeri)
    p1 <- rPlot(x="variable",y="value",data=new_df2,type='line')
    p1$layer(x="variable",y="value",data=new_df2,type='point')
    return(p1)
  })
  
})
