message('library paths:\n', paste('... ', .libPaths(), sep='', collapse='\n'))
 

shiny::runApp('./App/app.R', launch.browser = TRUE)
