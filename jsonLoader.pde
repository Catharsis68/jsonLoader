JSONObject json;
import java.util.Date;


void loadData(String args) {
  
  json = loadJSONObject(args);

  double originStationLatitude = json.getDouble("DestinationStationLatitude");
  double originStationLongitude = json.getDouble("DestinationStationLongitude");
  String originCityName = json.getString("OriginCityName");
  String destinationCityName = json.getString("DestinationCityName");
  String destinationCountry = json.getString("DestinationCountry");
  int connectionNumber = json.getInt("ConnectionNumber");
  String departureDate = json.getString("DepartureDate");

  println(departureDate);
  println(originStationLatitude + " " + originStationLongitude);
  println(originCityName + " --> " + destinationCityName);  
  println("Linie: " + connectionNumber + " " + destinationCountry + "\n");
}
void setup() {

  String args = "";
    
  for(int i=1; i<4; i++)  {
        args = "jsonTest_" + i + ".json";
        println(args);
        
       loadData(args);
  }  
}