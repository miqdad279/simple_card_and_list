import 'package:flutter/material.dart';

import 'mahasiswa.dart';

class TugasScreen extends StatefulWidget {
  const TugasScreen({super.key});

  @override
  State<TugasScreen> createState() => _TugasScreenState();
}

class _TugasScreenState extends State<TugasScreen> {
  List<Mahasiswa> mahasiswas = [
    Mahasiswa(
        name: 'Miqdad Abdillah',
        nim: 'D112011021',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://profile-assets.showwcase.com/160x/45863/1665408132366-1665408131119-IMG_20220928_045802_208.jpg?type=webp'),
    Mahasiswa(
        name: 'Putri Nurlaela Sari',
        nim: 'D112011029',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1564463836146-4e30522c2984?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
    Mahasiswa(
        name: 'Atikah Salma Hidayati',
        nim: 'D112011023',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1615473967657-9dc21773daa3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
    Mahasiswa(
        name: 'Farah AHHP',
        nim: 'D112011022',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=853&q=80'),
    Mahasiswa(
        name: 'Hasna Naziah Ahmad',
        nim: 'D112011024',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1551292831-023188e78222?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
    Mahasiswa(
        name: 'Shofiyyah',
        nim: 'D112011025',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1563350316-9f7fc841d2c4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
    Mahasiswa(
        name: 'Elvin Khoirunissa',
        nim: 'D112011099',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1567468219153-4b1dea5227ea?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
    Mahasiswa(
        name: 'Firda Nur Istianah',
        nim: 'D11201100',
        tahun: '2020',
        prodi: 'Teknik Informatika',
        profileImg:
            'https://images.unsplash.com/photo-1542228935-eb10cfc468a3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80'),
  ];

  Widget mahasiswaDetailCard(Mahasiswa m) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 8),
      child: Card(
        elevation: 0,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover, image: NetworkImage(m.profileImg))),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  m.name,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  m.nim,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  m.tahun,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
                Text(
                  m.prodi,
                  style: const TextStyle(color: Colors.black, fontSize: 12),
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6F9FF),
      appBar: AppBar(
        title: const Text('Tugas Card View'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 16, 10, 10),
          child: Column(
            children: [
              Column(
                  children:
                      mahasiswas.map((m) => mahasiswaDetailCard(m)).toList())
            ],
          ),
        ),
      ),
    );
  }
}
