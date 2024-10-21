import 'package:flutter/material.dart';
import 'main.dart'; // Untuk navigasi ke halaman main setelah login

void main() => runApp(const MaterialApp(
  debugShowCheckedModeBanner: false,
  home: LoginPage(),
));

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController roleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController schoolController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 95.0,
                backgroundImage: AssetImage('images/Sigit.jpg'),
              ),
              const SizedBox(height: 20),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange,
                        ),
                      ),
                      const SizedBox(height: 20),
                      // TextField untuk Nama
                      TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          labelText: "Nama",
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // TextField untuk Role
                      TextField(
                        controller: roleController,
                        decoration: InputDecoration(
                          labelText: "Role",
                          prefixIcon: const Icon(Icons.work),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // TextField untukDescription
                      TextField(
                        controller: descriptionController,
                        decoration: InputDecoration(
                          labelText: "Description",
                          prefixIcon: const Icon(Icons.email),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      // TextField untuk Sekolah
                      TextField(
                        controller: schoolController,
                        decoration: InputDecoration(
                          labelText: "Sekolah",
                          prefixIcon: const Icon(Icons.school),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Tombol Login
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          // Setelah login, navigasi ke halaman home dengan data dari inputan
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(
                                name: nameController.text,
                                role: roleController.text,
                                description: descriptionController.text,
                                school: schoolController.text,
                              ),
                            ),
                          );
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
