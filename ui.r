library(shiny)

bootstrapPage(
  tags$head(
    tags$link(href='css/bootstrap.min.css', rel='stylesheet'),
    tags$link(href='css/freelancer.css', rel='stylesheet'),
    tags$link(href='font-awesome/css/font-awesome.min.css', rel='stylesheet', type='text/css'),
    tags$link(href='http://fonts.googleapis.com/css?family=Montserrat:400,700', rel='stylesheet', type='text/css'),
    tags$link(href='http://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic', rel='stylesheet', type='text/css')
  ),
  tags$body(id="page-top", class="index",
            tags$nav(class="navbar navbar-default navbar-fixed-top",
                     tags$div(class="container",
                              tags$div(class="navbar-header page-scroll",
                                       #tags$button(type="button", class="navbar-toggle", data-toggle='collapse', data-target='#bs-example-navbar-collapse-1',
                                       tags$button(type="button", class="navbar-toggle",
                                                   tags$span(class="sr-only", "Toggle navigation"),
                                                   tags$span(class="icon-bar"),
                                                   tags$span(class="icon-bar"),
                                                   tags$span(class="icon-bar")
                                       ),
                                       tags$a(class="navbar-brand", href="#page-top", "SNP Corellation")
                              ),
                              tags$div(class="collapse navbar-collapse", id="bs-example-navbar-collapse-1",
                                       tags$ul(class="nav navbar-nav navbar-right",
                                               tags$li(class="hidden",
                                                       tags$a(href="#page-top")
                                               ),
                                               #tags$li(class="page-scroll",
                                               #  tags$a(href="#howto", "How to Use")
                                               #),
                                               tags$li(class="page-scroll",
                                                       tags$a(href="#upload", "Upload")
                                               ),
                                               tags$li(class="page-scroll",
                                                       tags$a(href="#result", "Result")
                                               )
                                       )
                              )
                     )
            ),
            tags$header(
              tags$div(class="container",
                       tags$div(class="row",
                                tags$div(class="col-lg-12",
                                         tags$div(class="intro-text",
                                                  tags$span(class="name", "SNP Corellation"),
                                                  tags$hr(class="star-light"),
                                                  tags$span(class="skills", "Tools for searching colleration in SNP"),
                                                  tags$div(class="page-scroll",
                                                           tags$a(class="btn btn-primary", href="#upload",
                                                                  tags$span(class="skill", "Upload your file")
                                                           )
                                                  )
                                         )
                                )
                       )
              )
            ),
            #--Upload Section--#
            tags$section(class="success", id="upload",
                         tags$div(class="container",
                                  tags$div(class="row",
                                           tags$div(class="col-lg-12 text-center",
                                                    tags$h2("Upload"),
                                                    tags$hr(class="star-light")
                                           )
                                  ),
                                  tags$div(class="row",
                                           tags$div(class="col-lg-4 col-lg-offset-2 text center",
                                                    tags$div(class="text-center",
                                                             tags$p("Upload File Fenotype"),
                                                             tags$div(class="form-group form-group-md",
                                                                      tags$div(class="row",
                                                                               tags$div(class="col-md-offset-1 col-md-10",
                                                                                        fileInput("fileFenotype", label=NA, accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv'))
                                                                               )
                                                                      )
                                                             )
                                                    )
                                           ),
                                           tags$div(class="col-lg-4",
                                                    tags$div(class="text-center",
                                                             tags$p("Upload File Genotype"),
                                                             tags$div(class="form-group form-group-md",
                                                                      tags$div(class="row",
                                                                               tags$div(class="col-md-offset-1 col-md-10",
                                                                                        fileInput("fileGenotype", label=NA, accept=c('text/csv', 'text/comma-separated-values,text/plain', '.csv'))
                                                                               )
                                                                      )
                                                             )
                                                    )
                                           )
                                  )
                         )
            ),
            #--Result Section--#
            tags$section(id="result",
                         tags$div(class="container",
                                  tags$div(class="row",
                                           tags$div(class="col-lg-12 text-center",
                                                    tags$h2("Result"),
                                                    tags$hr(class="star-primary")
                                           )
                                  ),
                                  tags$div(class="row",
                                           tags$div(class="col-lg-12 text-center",
                                                    dataTableOutput("myOutput")
                                           )
                                  )
                         )
            ),
            #--Footer--#
            tags$footer(class="text-center",
                        tags$div(class="footer-above",
                                 tags$div(class="container",
                                          tags$div(class="row",
                                                   tags$div(class="col-lg-12",
                                                            HTML("Copyright &copy; IPB 2014")
                                                   )
                                          )
                                 )
                        )
            ),
            tags$script(src="js/jquery.js"),
            tags$script(src="js/bootstrap.min.js"),
            tags$script(src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"),
            tags$script(src="js/classie.js"),
            tags$script(src="js/cbpAnimatedHeader.js"),
            tags$script(src="js/jqBootstrapValidation.js"),
            tags$script(src="js/contact_me.js"),
            tags$script(src="js/freelancer.js")
  )
)