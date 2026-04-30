import 'package:flutter/material.dart';
import 'package:amap_flutter_map/amap_flutter_map.dart';
import 'package:amap_flutter_base/amap_flutter_base.dart';
import '../pages/trip_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late AMapController _controller;

  final List<LatLng> routePoints = [
    LatLng(20.044, 110.199),
    LatLng(18.252, 109.511),
    LatLng(19.521, 110.334),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('海南摩旅'),
        actions: [
          IconButton(
            icon: const Icon(Icons.list),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => TripPage()),
              );
            },
          )
        ],
      ),
      body: AMapWidget(
        onMapCreated: (controller) {
          _controller = controller;
          _drawRoute();
        },
      ),
    );
  }

  void _drawRoute() {
    _controller.addPolyline(PolylineOptions(
      points: routePoints,
      color: Colors.red,
      width: 6,
    ));
  }
}