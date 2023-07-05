                                                                                                                                                                                   Grocery Store (Exit Test)


SOFTWARE REQUIREMENTS :

1)  Microsoft SQL Server Database
2)  Visual Studio 2022
3)  Dotnet core 6
4)  Angular 16.0.2
5)  VS Code


Follows the steps to run and setup the project : 

1) Open Microsoft SQL Server Management Studio and execute the file "DB_Schema_only.sql" that is provided in the zip folder to create the schema. 

2)  Set the Connection String in "appsetting.json" in GroceryApp as per your system. 

3) Open GroceryApp.sln file in the visual studio 2022 and run following commands in package manager console and select Grocery.DAL in dropdown as the project :

    i) First execute the following below command (this command will add the migartion folder in DAL project)

                                               ===> add-migration "init"

    ii) Execute the following commmand now to update the database
 
                                               ===> update-database

4) Now run these files in the given order in Microsoft SQL Server Management Studio:

        
                                              ===> DB_Alter.sql
                                              ===> DataOfApp.sql
 

5) Now you are ready to run the project Api (GroceryApp) in Visual Studio 2022.

6) Open the GroceryAppUI folder in Vs Code and execute the below command to install to node_module:
     
                                             ===> "npm i"

7) Open GroceryAppUI folder in VS Code.

8) Run command  to launch project UI.

                                           ====>"ng serve --open"

9) At this point both frontend and backend should be connected if all steps has been followed properly .



Important POINTS TO REMEBMER:--

1) Open Api first in Visual studio 2022.
 
2) Then open and launch UI.

3)  Follow above mentioned steps in given order.