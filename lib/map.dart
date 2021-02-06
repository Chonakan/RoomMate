import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Mapstore extends StatefulWidget {
  final latt;
  final lng;

  Mapstore({this.latt, this.lng});

  @override
  _MapstoreState createState() => _MapstoreState();
}

class _MapstoreState extends State<Mapstore> {
  List<Marker> markers = [];

  @override
  void initState() {
    super.initState();
    markers.add(Marker(
        markerId: MarkerId('myMarker'),
        draggable: false,
        position: LatLng(widget.latt, widget.lng)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Google Map',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(widget.latt, widget.lng), zoom: 15.0),
        mapType: MapType.normal,
        markers: Set.from(markers),
      ),
    );
  }
}
