import 'package:flutter/material.dart';
import '../data/trip_data.dart';

class TripPage extends StatelessWidget {
  const TripPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("摩旅行程")),
      body: ListView.builder(
        itemCount: tripData.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              title: Text(tripData[index].title),
              subtitle: Text(tripData[index].description),
            ),
          );
        },
      ),
    );
  }
}