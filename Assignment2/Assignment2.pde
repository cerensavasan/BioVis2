//Lab 2
//by Ceren Savasan
//username: csavasan

//arrays with the data
String[] attributes = {"animal name",
                     "hair",
                     "feathers",
                     "eggs",
                     "milk",
                     "airborne",
                     "aquatic",
                     "predator",
                     "toothed",
                     "backbone",
                     "breathes",
                     "venomous",
                     "fins",
                     "legs",
                     "tail",
                     "domestic",
                     "catsize",
                     "type"};
                                          
String[] dataType = {"String",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Numeric",
                     "Boolean",
                     "Boolean",
                     "Boolean",
                     "Numeric"};
                     
Table table = new Table(); //initial table to iterate through
Table resultsTable = new Table();  //final table to print to csv table
  
void setup(){
  table = loadTable("zoo.data", "csv");  //load in the input
  
   for(int j=0; j < attributes.length; j++){
    resultsTable.addColumn(attributes[j]);  //the column titles
   }
  
  //iterates through zoo.data to change 1s to true and 0s to false
  for(TableRow row : table.rows()){
    for(int i=0; i < attributes.length; i++){
      if(dataType[i] == "Boolean"){ 
        if(row.getInt(i) == 1){
          row.setString(i, "true");
        }
        else{
          row.setString(i, "false");
      }
    }
   }
   resultsTable.addRow(row); //strings and numerics get added as they are
  }
  
  saveTable(resultsTable, "humanData.csv");  //save the edited table as a .csv file
}

