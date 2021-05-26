import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class IntialMapPage extends StatefulWidget {
  @override
  _IntialMapPageState createState() => _IntialMapPageState();
}

class _IntialMapPageState extends State<IntialMapPage> {
  List<Marker> markers = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              onTap: (latlng) {
                setState(() {
                  setMarker(latlng);
                });
              },
              center: LatLng(35.6892, 51.3890),
              zoom: 13,
            ),
            layers: [
              TileLayerOptions(
                urlTemplate:
                    "https://api.mapbox.com/styles/v1/mohammad-shabani/ckox8gz710oex17o23giye6q6/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibW9oYW1tYWQtc2hhYmFuaSIsImEiOiJja294ODliYjUwNW93Mm9tc2NuN2dmM2d3In0.7oqosfNn0o4hY97nZ0lXAQ",
              ),
              MarkerLayerOptions(
                markers: markers,
              )
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context, markers.length != 0 ? markers[0].point : null);
              },
              child: Text("Confirm"),
            ),
          ),
        ],
      ),
    );
  }

  Marker setMarker(LatLng latLng) {
    markers.clear();
    markers.add(Marker(
      point: latLng,
      builder: (ctx) => Icon(
        Icons.place,
        color: Colors.red,
        size: 40,
      ),
    ));
  }
}
