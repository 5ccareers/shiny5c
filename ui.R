library(shiny)

regions <- c("World" = "world",
             "Africa"= "002",
             "Europe"="150",
             "Americas"="019",
             "Asia"="142",
             "Oceania"="009")

factors <- paste0("Factor_", 1:10)

dimensions <- paste0("Dimension_", 1:7)

projections <- c("mercator", "albers", "lambert","kavrayskiy-vii")

shinyUI(fluidPage(
  titlePanel("5C Visualisations"),
  sidebarLayout(
    sidebarPanel(
      tags$head(
        tags$style(type='text/css', ".col-sm-4 { max-width: 270px; margin-top: 41px;}"),
        tags$style(type='text/css', ".well { background-color: #fafafa; }"),
        tags$style(type='text/css', ".multi  { border-color: #aaa; }"),
        tags$style(type='text/css', ".single { border-color: #aaa; }"),
        tags$style(type='text/css', "#dimplot {height: 500px !important;}"),
        tags$style(type='text/css', "#dimxfac {height: 500px !important;}"),
        tags$style(type='text/css', "th, td {padding: 5px;}"),
        tags$style(type='text/css', "table, th, td { border-bottom: 1px solid #000; }"),
        includeScript("www/5c.js")
      ),
      conditionalPanel(condition="input.conditionedPanels==1",
        selectInput("region", "Region", regions),
        uiOutput("facdimsel1"),
        uiOutput("dim11"),
        uiOutput("dim21"),
        uiOutput("dim31"),
        uiOutput("fac11"),
        uiOutput("fac21"),
        uiOutput("hline11"),
        uiOutput("colorsel")
      ),
      conditionalPanel(condition="input.conditionedPanels==2",
        uiOutput("country2"),
        uiOutput("dim12"),
        uiOutput("dim22"),
        uiOutput("dim32"),
        uiOutput("xaxis")
      ),
      conditionalPanel(condition="input.conditionedPanels==3",
        uiOutput("cntorclus3"),
        uiOutput("clus3"),
        uiOutput("cnt3"),
        uiOutput("hline13"),
        uiOutput("xsel3"),
        uiOutput("x3"),
        uiOutput("hline23"),
        uiOutput("ysel3"),
        uiOutput("y3"),
        uiOutput("hline33"),
        uiOutput("zsel3"),
        uiOutput("z3")
      ),
      conditionalPanel(condition="input.conditionedPanels==4",
        uiOutput("help")
      ),
      conditionalPanel(condition="input.conditionedPanels==5",
        uiOutput("about")
      )
#      conditionalPanel(condition="input.conditionedPanels==99",
#         uiOutput("country99"),
#         uiOutput("dim99")
#      )
    ),
    mainPanel(
        tabsetPanel(
            tabPanel("Map", htmlOutput("gvismap"), downloadButton('downloadMap', 'Download Map'),
                     HTML("<br><br>"), icon=icon("globe"), value=1),

            tabPanel("Success Factors",  plotOutput("dimplot"),
                     HTML("<br>"), downloadButton('downloadDim', 'Download Plot'),
                     icon=icon("bar-chart"), value=2),

            tabPanel("Multidimensional Views",
                     div(style = "position:relative",
                         plotOutput("dimxfac",
                                    hover = hoverOpts("plot_hover",
                                                      delay = 100,
                                                      delayType = "debounce")),
                         uiOutput("hover_info")
                         ),
                     HTML("<br>"), downloadButton('downloadDimFac', 'Download Plot'),
                     icon=icon("line-chart"), value=3),

            tabPanel("Help", htmlOutput("helptext"),
                     icon=icon("question"), value=4),

            tabPanel("About", htmlOutput("abouttext"),
                     icon=icon("info"), value=5),

        #tabPanel("test",  htmlOutput("test"),  value=99),
        #tabPanel("test2",  plotlyOutput("testplot2"),  value=98),
        id = "conditionedPanels"
      )
    ) #mainPanel
  ) #sidebarLayout
)) #shinyUI/fluidPage
