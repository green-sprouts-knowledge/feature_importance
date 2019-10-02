#
# this is a shiny application meant to eventually evolve into an app that estimates feature importance based on a set of features 
# we will start off by opening an excel file, select the features we want and calculate feature importance 
# later on we will build more functionality on top of it like checking for correlated features and multicollinearity 
# the goal is also to understand how the boruta algorithm works
#

library(shiny)

# define the user interface for the application 
# fluid page function creates a display that automatically adjusts to the users' browser dimensions 
ui <- fluidPage(
    
    # title panel 
    titlePanel("this is the title panel"),
    
    # sidebar layout 
    sidebarLayout(
        position = "left",
        sidebarPanel("sidebar panel", 
                     h4("for kicks and giggles", align = "center")), 
        mainPanel("main panel", 
                  
                  h1("first level title aligned center", align = "center"), 
                  h2("second level title"), 
                  h6("sixth level title aligned right", align = "right"), 
                  p("p creates a paragraph of text."), 
                  p("A new p() command starts a new paragraph. 
                    Supply a style attribute to change the format of the entire paragraph.", 
                    style = "font-family: 'arial'; font-si16pt"), 
                  p(strong("strong() makes bold text.")),
                  br(),
                  p(em("em() creates italicized (i.e, emphasized) text.")), 
                  br(), 
                  code("code displays your text similar to computer code"), 
                  br(), br(),
                  div("div creates segments of text with a similar style. 
                      This division of text is all blue because I passed the 
                      argument 'style = color:blue' to div", style = "color:blue")
                  ),
        
    )
    
)

# define server logic required to build the application 
server <- function(input, output) {
    
    
}

# run the application 
shinyApp(ui = ui, server = server)
