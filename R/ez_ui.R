
#' ez_ui
#' @inheritParams ez_app
#' @export
ez_ui = function(data) {
  miniUI::miniPage(
    miniUI::gadgetTitleBar("ezplot"),
    miniUI::miniContentPanel(
      shiny::fillRow(
        flex = c(1,3),
        shiny::column(
          width = 12,
          shiny::selectInput(
            "selected_data",
            "Select data",
            choices = c(
              if (is.null(data)) NULL else "ez_app(data)",
              # "Load data ...",
              "ansett",
              "aus_livestock",
              "aus_production",
              "aus_retail",
              "gafa_stock",
              "global_economy",
              "hh_budget",
              "nyc_bikes",
              "olympic_running",
              "PBS",
              "pelt",
              "vic_elec"
            ),
            width = "100%"
          ),
          shiny::selectInput("geom",
                             "Select chart type",
                             c("line", "bar", "area", "pie", "waterfall"),
                             width = "100%"),
          shiny::uiOutput("select_x"),
          shiny::uiOutput("select_y"),
          shiny::uiOutput("select_group"),
          shiny::uiOutput("select_facet_x"),
          shiny::uiOutput("select_facet_y")
        ),
        shiny::tabsetPanel(
          # height = "100%",
          shiny::tabPanel(
            "Chart",
            # height = "100%",
            shiny::fillCol(
              shiny::br(),
              shiny::plotOutput("plot", height = "600"))
          ),
          shiny::tabPanel(
            "Data",
            shiny::br(),
            DT::dataTableOutput("data_table")
          )
        )
      )
    )
  )
}
