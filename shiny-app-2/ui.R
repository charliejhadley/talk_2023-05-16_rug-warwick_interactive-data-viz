fluidPage(
  sliderInput("mean",
              "mean",
              min = 0,
              max = 5,
              value = 2),
  textInput("title",
            "title"),
  plotOutput("hist")
)