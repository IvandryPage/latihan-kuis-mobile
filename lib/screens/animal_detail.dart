import 'package:flutter/material.dart';
import 'package:latkuis_mobile/models/animal.dart';

class AnimalDetailPage extends StatelessWidget {
  final Animal animal;

  const AnimalDetailPage({super.key, required this.animal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animal Detail'),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text('Logout', style: TextStyle(color: Colors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              animal.image,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(
              animal.name,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text('Type: ${animal.type}'),
            const SizedBox(height: 8),
            Text('Habitat: ${animal.habitat.join(', ')}'),
            const SizedBox(height: 8),
            Text('Weight: ${animal.weight} kg'),
            const SizedBox(height: 8),
            Text('Height: ${animal.height} cm'),
            const SizedBox(height: 20),
            const Text(
              'Activities:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            for (var activity in animal.activities)
              Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Text('- $activity'),
              ),
          ],
        ),
      ),
    );
  }
}
