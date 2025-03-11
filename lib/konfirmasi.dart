import 'package:flutter/material.dart';
import 'package:kuis_123220136/login_page.dart';

class KonfirmasiPage extends StatelessWidget {
  const KonfirmasiPage({
    super.key, 
    required this.nama,
    required this.tujuan,
    required this.jumlah,
    });

  final String nama, tujuan, jumlah;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        title: Text('Konfirmasi Tiket',),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 200, 10, 20),
        child:SizedBox(
          height: 350,
          child : Card(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                'Detail Pemesanan',
                style: TextStyle(
                  fontSize: 30, 
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
              ),
              TextField(
                controller: TextEditingController(text: nama),
                readOnly: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                  labelText: 'Nama Pemesan',
                  border: InputBorder.none,
                ),
              ),
              TextField(
                controller: TextEditingController(text: tujuan),
                readOnly: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.location_on_sharp),
                  labelText: 'Tujuan',
                  border: InputBorder.none,
                ),
              ),
              TextField(
                controller: TextEditingController(text: jumlah),
                readOnly: true,
                decoration: InputDecoration(
                  icon: Icon(Icons.catching_pokemon),
                  labelText: 'Jumlah Tiket',
                  border: InputBorder.none,
                ),
              ),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text('Kembali')),
              ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Logout Berhasil'))
                );
                Navigator.pushAndRemoveUntil(context,
                MaterialPageRoute(builder: (context)=>LoginPage()),
                (route)=> false
                );
              }, child: Text('Logout'))
            ],
          ),
          )
          
        ))
    );
  }
}