import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';

// HOUR_MINUTE                  jm
// MONTH_DAY                    MMMMd



// Centered on Coe campus
const LatLng _center = LatLng(41.98734173764673, -91.65807465692832);

// This always need to match how many markers are pulled from database
int numMarkers = 3;

List<LatLng> squirrelMarkerLatlng = [
  // TODO pull user latlng from database, possibly look at .fromJSON method
  _center,
  LatLng(41.98734173764673, _center.longitude + 0.001),
  LatLng(41.98734173764673, _center.longitude - 0.001)
];

List<String> squirrelMarkerUsernames = [
  // TODO pull usernames from database WITH latlng so everything lines up
  "markerOne",
  "markerTwo",
  "markerThree"
];

// Initialize map markers
List<Marker>? mapMarkerInit(
    int num, List<String> usernames, List<LatLng> coords) {
  var markerList = <Marker>[];
  var time = DateFormat('jm').format(DateTime.now()).toString();
  var date = DateFormat('Md').format(DateTime.now()).toString();
  

  for (int i = 0; i < numMarkers; i++) {
    markerList.add(Marker(
        markerId: MarkerId(usernames[i]),
        position: coords[i],
        infoWindow: InfoWindow(
          title: "Picture by " + usernames[i] + ", " + date + ", " + time,
          snippet: "Coords: " +
              (coords[i].latitude).toString() +
              ", " +
              (coords[i].longitude).toString(),
        )));
  }

  return markerList;
}

class SquirrelMap extends StatefulWidget {
  SquirrelMap({Key? key}) : super(key: key);

  @override
  _SquirrelMapState createState() => _SquirrelMapState();
}

class _SquirrelMapState extends State<SquirrelMap> {
  // Map markers
  List<Marker>? markerList =
      mapMarkerInit(numMarkers, squirrelMarkerUsernames, squirrelMarkerLatlng);

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      compassEnabled: true,
      mapToolbarEnabled: false,
      myLocationButtonEnabled: true,
      mapType: MapType.normal,
      zoomControlsEnabled: false,
      initialCameraPosition: const CameraPosition(
        target: _center,
        zoom: 17,
      ),
      markers: markerList!.toSet(),
    );
  }
}
