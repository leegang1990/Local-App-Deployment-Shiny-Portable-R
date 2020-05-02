# Local App Deployment Package Using Shiny and Portable R
A deployment package for locally deployed micro-application using Shiny and Portable R

## Overview
This package is created for the easy deployment of custom applications written in R to multiple users, without the need for installation and server hosting. The application can be run by simply double clicking on the *Run.vbs* file and opens as a *Shiny App* in the user's default browser. Users can simply access the application package deployed through a shared network, thumbdrive, or even their local machine, without the need for any installation (thanks to Portable R). Developers can simply built a micro-application using the file package just by changing the *App.R* script file, similar to creating a Shiny App.

## Basic Architecture
The package is built using Shiny and Portable R. Below are the key components of the package:

- **Run.vbs**: A VBS script that is used to execute the R scripts in the background. Users just need to double-click on the file to run the entire app. The VBS script file executes the **runShinyApp.R** file with **R-Portable** in the background, without opening the R CLI.

- **R-Portable**: The folder containing the **R-Portable** application. This is used to run all the R Scripts.

- **runShinyApp.R**: A R script that executes the **app.R** script file using the default browser.

- **app.R**: The main R Shiny script file that contains all the codes for the custom application developed. 

- **Run_App_Msg.txt**: A text file containing all the output message that is displayed in the R console. This is used mainly for troubleshooting and debugging. The text file will be overwritten everytime a new session of the application is run.

## How To Setup The Application Package

(to be cont')
