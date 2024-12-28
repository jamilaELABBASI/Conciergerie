import 'package:conciergerie/Style/AppColors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeolocatorWidget extends StatefulWidget {
  const GeolocatorWidget({super.key});

  @override
  State<GeolocatorWidget> createState() => _GeolocatorWidgetState();
}

class _GeolocatorWidgetState extends State<GeolocatorWidget> {
  late GoogleMapController _googleMapController;
  bool _isTrafficEnabled = true; // Traffic control
  double _currentZoom = 13.0; // Default zoom level

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          height: screenHeight * 0.80, // 80% of the screen height
          decoration: BoxDecoration(
            color: AppColors().primary,
          ),
          child: Stack(
            children: [
              GoogleMap(
                initialCameraPosition: CameraPosition(
                  target: LatLng(37.7749, -122.4194), // San Francisco
                  zoom: _currentZoom,
                ),
                onMapCreated: (controller) {
                  _googleMapController = controller;
                },
                trafficEnabled: _isTrafficEnabled, // Enable traffic
                zoomControlsEnabled: false, // Disable built-in zoom controls
              ),
              Positioned(
                right: 10,
                bottom: 50,
                child: Column(
                  children: [
                    FloatingActionButton(
                      heroTag: "zoomIn",
                      onPressed: () {},
                      child: Icon(Icons.zoom_in),
                    ),
                    SizedBox(height: 10),
                    FloatingActionButton(
                      heroTag: "zoomOut",
                      onPressed: () {},
                      child: Icon(Icons.zoom_out),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 20,
          color: Colors.black,
        ),
      ],
    );
  }
}
