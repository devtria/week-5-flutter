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
      body: MyPages2(),
   );
 }
}

// class MyPages1 extends StatelessWidget {
//   const MyPages1({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const Text(
//                 '1 & 2. Aturan Constraints (Batas) dan Size (Ukuran)',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 10),
//               const Text('ConstrainedBox memberikan rentang batas (min-max width/height). '
//                 'Kotak biru meminta ukuran 500x200, yang masih berada di dalam batas induk, sehingga permintaannya disetujui.'),
//               const SizedBox(height: 10),
              
//               // CONTOH ATURAN 1 & 2
//               ConstrainedBox(
//                 // INDUK memberikan constraints ke bawah (Constraints turun)
//                 constraints: const BoxConstraints(
//                   minWidth: 100,
//                   maxWidth: 600,
//                   minHeight: 100,
//                   maxHeight: 200,
//                 ),
//                 // ANAK mencoba menentukan ukuran (Ukuran naik)
//                 child: Container(
//                   width: 500, 
//                   height: 200,
//                   color: Colors.blue,
//                   child: const Text(
//                     'Saya minta 500x200, dan behasil. \n' 
//                     'Selama anak tidak melebihi batas induk maka hasilnya akan sesuai',
//                     style: TextStyle(color: Colors.white),
//                     textAlign: TextAlign.center,
//                   ),
                  
//                 ),
//               ),
//             ],
//           ),
//         ),
//       );
//   }
// }

class MyPages2 extends StatelessWidget {
  const MyPages2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             // const Divider(height: 40, thickness: 2),

              const Text(
                '3. Aturan Posisi (dengan Center)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak merah 80x80 tidak bisa menaruh dirinya di tengah, jadi kita gunakan widget Center.'),
              const SizedBox(height: 10),

              // CONTOH ATURAN 3 (CENTER)
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Induk yang memiliki ruang
                // Induk yang menentukan posisi
                child: Center( 
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.red,
                    child: const Text('Center', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),

              const Divider(height: 40, thickness: 2),

              const Text(
                '3. Aturan Posisi (dengan Align)',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text('Induk abu-abu berukuran 200x200. Kotak hijau 80x80 ditempatkan di pojok kanan bawah menggunakan widget Align.'),
              const SizedBox(height: 10),

              // CONTOH ATURAN 3 (ALIGN)
              Container(
                width: 200,
                height: 200,
                color: Colors.grey[300], // Induk yang memiliki ruang
                // Induk yang menentukan posisi
                child: Align(
                  alignment: Alignment.bottomRight, 
                  child: Container(
                    width: 80,
                    height: 80,
                    color: Colors.green,
                    child: const Text('Align', style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
  }
}