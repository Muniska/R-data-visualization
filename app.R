library(shiny)
library(tidyverse)
library(ggplot2)
library(rsconnect)

# Import Data
dat <- read_csv(url("https://www.dropbox.com/s/uhfstf6g36ghxwp/cces_sample_coursera.csv?raw=1"))
dat <- dat %>% select(pid7, ideo5)
dat <- drop_na(dat)

ui <- fluidPage(
  h4("Select Five Point Ideology (1=Very liberal, 5=Very conservative)"),
  sliderInput(
    inputId = "ideo_select",
    label = NULL,
    min = min(dat$ideo5),
    max = max(dat$ideo5),
    value = 3,
    step = 1
  ),
  plotOutput("barPlot")
)

server <- function(input, output) {
  output$barPlot <- renderPlot({
    filtered <- dat %>% filter(ideo5 == input$ideo_select)
    ggplot(filtered, aes(x = pid7)) +
      geom_bar(fill = "gray30") +
      labs(
        x = "7 Point Party ID, 1=Very D, 7=Very R",
        y = "Count"
      ) +
      theme_minimal()
  })
}

shinyApp(ui, server)

