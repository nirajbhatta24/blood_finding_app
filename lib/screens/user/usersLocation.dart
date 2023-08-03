import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UsersLocation extends StatefulWidget {
  const UsersLocation({Key? key}) : super(key: key);

  @override
  _UsersLocationState createState() => _UsersLocationState();
}

class _UsersLocationState extends State<UsersLocation> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  LatLng mylocation = const LatLng(27.7111651, 85.3483953);
  LatLng kaushal = const LatLng(27.7127356, 85.3459928);
  LatLng krijal = const LatLng(27.725799, 85.304482);
  LatLng niraj = const LatLng(27.718066, 85.341824);
  LatLng user1 = const LatLng(27.718066, 85.341824);
  LatLng user2 = const LatLng(27.718066, 85.341824);
  LatLng user3 = const LatLng(27.718066, 85.341824);
  LatLng user4 = const LatLng(27.718066, 85.341824);
  LatLng user5 = const LatLng(27.718066, 85.341824);
  LatLng user6 = const LatLng(27.718066, 85.341824);
  LatLng user7 = const LatLng(27.718066, 85.341824);
  LatLng user8 = const LatLng(27.718066, 85.341824);
  LatLng user9 = const LatLng(27.718066, 85.341824);
  LatLng user10 = const LatLng(27.718066, 85.341824);

  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    markers.add(
      Marker(
        markerId: MarkerId(mylocation.toString()),
        position: mylocation,
        infoWindow: const InfoWindow(title: 'A+', snippet: "Niraj Bhatta"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(kaushal.toString()),
        position: kaushal,
        infoWindow: const InfoWindow(title: 'B+', snippet: "Kaushal Khanal"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(krijal.toString()),
        position: kaushal,
        infoWindow: const InfoWindow(title: 'B+', snippet: "Krijal Shrestha"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    // Add 10 more markers here
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.718066, 85.341824).toString()),
        position: LatLng(27.718066, 85.341824),
        infoWindow: const InfoWindow(title: 'AB+', snippet: "Bibhusha Sapkota"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.712922, 85.345822).toString()),
        position: LatLng(27.712922, 85.345822),
        infoWindow: const InfoWindow(title: 'O+', snippet: "Marina Gansi"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.718563, 85.342827).toString()),
        position: LatLng(27.718563, 85.342827),
        infoWindow: const InfoWindow(title: 'A+', snippet: "Ruja Bhatta"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.715238, 85.345249).toString()),
        position: LatLng(27.715238, 85.345249),
        infoWindow: const InfoWindow(title: 'B-', snippet: "Dillip Bhatta"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.720287, 85.343870).toString()),
        position: LatLng(27.720287, 85.343870),
        infoWindow: const InfoWindow(title: 'O-', snippet: "Harsana Pokhrel"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.713656, 85.345613).toString()),
        position: LatLng(27.713656, 85.345613),
        infoWindow: const InfoWindow(title: 'AB-', snippet: "Shyam Saud"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.725430, 85.344217).toString()),
        position: LatLng(27.725430, 85.344217),
        infoWindow: const InfoWindow(title: 'O+', snippet: "Hari Bhatta"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.725260, 85.347742).toString()),
        position: LatLng(27.725260, 85.347742),
        infoWindow: const InfoWindow(title: 'A+', snippet: "Ramesh Bhatta"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.714662, 85.347010).toString()),
        position: LatLng(27.714662, 85.347010),
        infoWindow: const InfoWindow(title: 'O+', snippet: "Rajan Bam"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    markers.add(
      Marker(
        markerId: MarkerId(LatLng(27.713833, 85.346178).toString()),
        position: LatLng(27.713833, 85.346178),
        infoWindow: const InfoWindow(title: 'B+', snippet: "Binod Bam"),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(target: mylocation, zoom: 10),
        markers: markers,
        mapType: MapType.normal,
        onMapCreated: (controller) {
          setState(() {
            mapController = controller;
          });
        },
      ),
    );
  }
}
