import 'package:flutter/material.dart';
import 'package:kuis_123220136/konfirmasi.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final TextEditingController _namaController = TextEditingController();
  final TextEditingController _tujuanController = TextEditingController();
  final TextEditingController _jumlahController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.home),
        title: Text('Pemesanan Ticket',),
      ),
      body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child:SizedBox(
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      // width: 300,
                      child: Image.asset('assets/images/banner.png')),
                    Text(
                      'Form Pemesanan',
                      style: TextStyle(
                        fontSize: 30, 
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                    ),
                    TextField(
                      controller: _namaController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.person),
                        prefixIconColor: Colors.blue,
                        border: OutlineInputBorder(),
                        labelText: "Nama Pemesan"
                      )
                    ),
                    TextField(
                      controller: _tujuanController,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.location_on_sharp),
                        prefixIconColor: Colors.blue,
                        border: OutlineInputBorder(),
                        labelText: "Tujuan Perjalanan"
                      )
                    ),
                    TextField(
                      controller: _jumlahController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.airplane_ticket_sharp),
                        prefixIconColor: Colors.blue,
                        border: OutlineInputBorder(),
                        labelText: "Jumlah Tiket"
                      )
                    ),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context){
                        return KonfirmasiPage(
                          nama : _namaController.text,
                          tujuan : _tujuanController.text,
                          jumlah : _jumlahController.text,
                        );
                      }));
                    }, child: Text('Konfirmasi Pemesanan'))
                  ],
                ),
              )
          )
          ),
    );
  }
}