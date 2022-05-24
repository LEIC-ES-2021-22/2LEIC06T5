import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:unimeals/constants/colors.dart';

import '../../model/restaurants.dart';

class MapSample extends StatefulWidget {
  final Restaurant restaurant;
  const MapSample ({required this.restaurant});

  @override
  MapSampleState createState() => MapSampleState();
}

class MapSampleState extends State<MapSample> {
  Completer<GoogleMapController> _controller = Completer();

  @override
  void initState() {
    super.initState();
    res = widget.restaurant;
  }
  late Restaurant res;

  //MARKERS FOR THE RESTAURANTS
  static final Marker _Grill = Marker(
    markerId: MarkerId('_Grill'),
    infoWindow: InfoWindow(title: "Grill"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(41.17638279844958, -8.595226285289137),
  );

  static final Marker _Cafetaria = Marker(
    markerId: MarkerId('_Cafetaria'),
    infoWindow: InfoWindow(title: "Cafetaria - Restaurant FEUP"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(41.17854340545968, -8.597440758738738),
  );

  static final Marker _RestauranteINEGI = Marker(
    markerId: MarkerId('_INEGI'),
    infoWindow: InfoWindow(title: "Restaurante do INEGI"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(41.17934975597032, -8.594378529295387),
  );

  static final Marker _Cantina = Marker(
    markerId: MarkerId('_Cantina'),
    infoWindow: InfoWindow(title: "Cantina FEUP"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(41.176299520335974, -8.59549249453409),
  );

  static final Marker _BarINESC = Marker(
    markerId: MarkerId('_INESC'),
    infoWindow: InfoWindow(title: "Bar INESC TEC"),
    icon: BitmapDescriptor.defaultMarker,
    position: LatLng(41.1793925865339, -8.59540155399247),
  );
  //MARKERS FOR THE RESTAURANTS


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(res.name),
        automaticallyImplyLeading: false,
        backgroundColor: mainRed,
        centerTitle: true,
        shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: CameraPosition(target: LatLng(res.lat,res.long), zoom: 25),
        markers: {
          _Cantina,
          _Cafetaria,
          _BarINESC,
          _Grill,
          _RestauranteINEGI,
        },
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pop(context);
        },
        label: Text('Voltar'),
        backgroundColor: mainRed,
        icon: Icon(Icons.keyboard_return),
      ),
    );
  }
}