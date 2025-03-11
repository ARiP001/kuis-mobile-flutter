import 'package:flutter/material.dart';
import 'package:kuis_123220136/dashboard_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _username = TextEditingController();
  final _password = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formkey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(30),
              child:SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 80,
                      child: Image.asset('assets/images/logo.png')
                      ),
                    Text(
                      'Selamat Datang di Aplikasi Pemesanan Tiket',
                      style: TextStyle(fontSize: 15),
                    ),
                    TextFormField(
                      
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return "Username tidak boleh kosong";
                        }
                        return null;
                      },
                      controller: _username,
                      decoration: InputDecoration(
                        icon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                        labelText: "Username"
                      )
                    ),
                    TextFormField(
                      validator: (value){
                        if (value == null || value.isEmpty){
                          return "Password tidak boleh kosong";
                        }
                        return null;
                      },
                      controller: _password,
                      obscureText: true,
                      decoration: InputDecoration(
                         icon: Icon(Icons.lock),
                        border: OutlineInputBorder(),
                        labelText: "Password"
                      ),
                    ),
                    SizedBox(
                        child: ElevatedButton(
                          onPressed: (){
                            if (_formkey.currentState!.validate()) {
                              if(_username.text.trim()=="Arif"&&_password.text.trim()=="12345"){
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Login berhasil'))
                                );
                                Navigator.push(context, 
                                  MaterialPageRoute(builder: (context){
                                    return DashboardPage();
                                  }
                                  )
                                );
                              }else{
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text('Salah Le'))
                                );
                              }
                            }
                          }, child: Text('Login')),
                      ),
                  ],
                ),
              )
            )
          )
          ),
        ),
      ); 
  }
}