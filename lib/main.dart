import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LayoutRulesExample(),
  ));
}

class LayoutRulesExample extends StatelessWidget {
  const LayoutRulesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tiga Aturan Layout Flutter'),
      ),
      body: MyPages1(),
   );
 }
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '1 & 2. Aturan Constraints (Batas) dan Size (Ukuran)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('ConstrainedBox memberikan rentang batas (min-max width/height). '
                'Kotak biru meminta ukuran 500x200, yang masih berada di dalam batas induk, sehingga permintaannya disetujui.'),
              const SizedBox(height: 10),
              
              // CONTOH ATURAN 1 & 2
              ConstrainedBox(
                // INDUK memberikan constraints ke bawah (Constraints turun)
                constraints: const BoxConstraints(
                  minWidth: 100,
                  maxWidth: 600,
                  minHeight: 100,
                  maxHeight: 200,
                ),
                // ANAK mencoba menentukan ukuran (Ukuran naik)
                child: Container(
                  width: 500, 
                  height: 200,
                  color: Colors.blue,
                  child: const Text(
                    'Saya minta 500x200, dan behasil. \n' 
                    'Selama anak tidak melebihi batas induk maka hasilnya akan sesuai',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                  
                ),
              ),
            ],
          ),
        ),
      );
  }
}