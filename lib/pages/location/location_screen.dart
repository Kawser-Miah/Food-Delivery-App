import "package:flutter/material.dart";
import "package:google_maps_flutter/google_maps_flutter.dart";

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: const GoogleMap(
              initialCameraPosition:
                  CameraPosition(target: LatLng(10, 10), zoom: 10),
            ),
          )
        ],
      ),
    );
  }
}
