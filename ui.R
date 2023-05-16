fluidPage(
  "Hello world",
  sliderInput("exponent",
              label = "Choose an exponent",
              min = 1,
              max = 6,
              value = 2),
  plotOutput("curve_plot")
)
