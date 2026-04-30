import 'package:flutter/material.dart';
import '../data/trip_data.dart';

class TripPage extends StatefulWidget {
  const TripPage({super.key});

  @override
  State<TripPage> createState() => _TripPageState();
}

class _TripPageState extends State<TripPage> {
  String summary = generateSummary();

  void generateNewTrip() {
    setState(() {
      summary = "随机生成路线：海口 → 临高 → 儋州 → 三亚 → 万宁（适合拍摄+骑行）";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("摩旅行程"),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: generateNewTrip,
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                summary,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
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
          ),
        ],
      ),
    );
  }
}
