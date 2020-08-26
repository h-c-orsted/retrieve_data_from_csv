Table table;
int rowCount, columnCount;

void setup() {
  // Load csv-file into table object
  table = loadTable("deaths-natural-disasters.csv");
  
  // Get information on the table for user later
  rowCount = table.getRowCount();
  columnCount = table.getColumnCount();
  println("Rows total: " + rowCount);
  println("Columns total: " + columnCount);
  
  // Create table row to hold all headers for use later
  TableRow headers = table.getRow(0);
  
  for (int i=0; i<rowCount-1; i++) {
    // Row 0 is headers
    TableRow row = table.getRow(i+1);
    println(row.getString(1));
    
    // Get each number for each year. Add 2 as the 2 first columns are country and code
    for (int j=0; j<columnCount-2; j++) {
      println(headers.getString(j+2) + " : " + row.getString(j+2));
    }
    // Space to next country
    println("");
  }
}
