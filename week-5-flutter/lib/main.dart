import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: Center(
          child: BasicTextWidget(text: 'Satria Nurulloh'),
        ),
      ),
    ),
  );

}

// belajar membuat widget text sederhana
class BasicTextWidget extends StatelessWidget {
  final String text;

  const BasicTextWidget({
    super.key,
    required this.text,
  });


  @override
  Widget build(BuildContext context) {
    return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
        Text(
          'Normal',
          style: TextStyle(
            fontSize: 20,
          ),
        ),

        Text(
          'Normal',
            style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),

        Text(
          'Normal',
            style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
    ],
  );

  }
}

// Belajar class untuk membuat perkenalan diri
class NamaSaya extends StatelessWidget {
  const NamaSaya({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Woy kenalin, gw Satria'),
            Text('Gw seorang AI Engineer'),
            Text('Gw mahasiswa IT'),
          ],
        ),
      ),
    );
  }
}

<<<<<<< HEAD

// Belajar class untuk membuat perkenalan diri dengan parameter
class GameFav extends StatelessWidget {
  const GameFav({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Flex(direction: Axis.horizontal)(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Woy kenalin, gw Satria'),
            Text('Gw sedang belajar Flutter'),
            Text('Gw mahasiswa IT'),
          ],
        ),
      ),
    );
  }
}
=======
// Widget sederhana untuk perkenalan denagn style yang lebih moderna
class PerkenalanWidget extends StatelessWidget {
  const PerkenalanWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min, // Agar posisinya tepat di tengah layar
      crossAxisAlignment: CrossAxisAlignment.start, // Mengatur agar semua teks rata kiri
      children: const [
        Text(
          'Halo, Nama Saya Satria',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),

        SizedBox(height: 10),

        Text(
          'Pekerjaan: AI Engineer',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
gi
        SizedBox(height: 5),

        Text(
          'Status: Mahasiswa IT',
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
>>>>>>> a10344d0f9f6c6b069e8143468930350544e1867
