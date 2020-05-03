# Local App Deployment Package Using Shiny and Portable R
A deployment package for locally deployed micro-application using Shiny and Portable R

*Last updated on 3 March 2020 by Lee Gang*


## Overview
This package is created for the easy deployment of custom applications written in R to multiple users, without the need for any installation (including R) and server hosting. The application can be run by simply double clicking on the **Run.vbs** file and opens as a **Shiny App** in the user's default browser. Users can simply open the application through a shared network, thumbdrive, or even their local machine. Developers can simply built a micro-application using the file package just by changing the *App.R* script file, similar to creating a Shiny App.


## Basic Architecture
The package is built using Shiny and Portable R. Below are the key components of the package:

- **Run.vbs**: A VBS script that is used to execute the R scripts in the background. Users just need to double-click on the file to run the entire app. The VBS script file executes the **runShinyApp.R** file with **R-Portable** in the background, without opening the R CLI.

- **R-Portable**: The folder containing the **R-Portable** application. This is used to run all the R Scripts. Users do not need to have R installed on their machine.

- **runShinyApp.R**: A R script that executes the **app.R** script file using the default browser.

- **app.R**: The main R Shiny script file that contains all the codes for the custom application developed. 

- **Run_App_Msg.txt**: A text file containing all the output message that is displayed in the R console. This is used mainly for troubleshooting and debugging. The text file will be overwritten everytime a new session of the application is run.


## How To Setup The Application Package

1. Download all files contained in this repository into your machine.

2. You can download the latest **R-Portable** from this [link](https://sourceforge.net/projects/rportable/).

3. Setup **R-Portable** following the step-by-step instructions.

4. Place the entire **R-Portable** folder containing all the files into the same folder containing the files in this repository.

5. Open the **Run.vbs** in edit mode, and change the *Rexe* to the relative file path of the executable **Rscript.exe** file in the **R-Portable** folder.

6. If you change the name of the **app.R** script, please remember to update the new name in the **runShinyApp.R** script file.

7. Double-click on **Run.vbs**, a sample application will open in your default browser.

8. Start building your application by editing the **app.R** script file. You can find out more about Shiny [here](https://shiny.rstudio.com/).

**Note**: To install new libraries in **R-Portable**, simply run the **R.exe** file within **R-Portable**, and install the packages via the R CLI/ console. Alternatively, you can copy the libraries from another directory and paste them in the *libary* folder within **R-Portable**.


## How To Deploy Built Applications

1. You can copy the entire folder containing the scripts and **R-Portable** to any thumbdrive or shared network folder for your users to access the application directly. 

2. Alternatively, you can also zip the entire folder and distribute the file to all your target users.

3. Users will simply have to unzip and open the file, double-click on the **Run.vbs** file to open the application.

4. For enhancement and modification to deployed applications, you can just distributed the updated script file to users to replace the existing script files.

### End of Document
