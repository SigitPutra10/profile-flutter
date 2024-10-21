import 'package:flutter/material.dart';
import 'Page2.dart';

class Home extends StatelessWidget {
  final String name;
  final String role;
  final String description;
  final String school;

  const Home({
    super.key,
    required this.name,
    required this.role,
    required this.description,
    required this.school,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Sigit.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.shortestSide,
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.center,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: const Color.fromRGBO(252, 219, 138, 1),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      const CircleAvatar(
                        radius: 90.0,
                        backgroundImage: AssetImage('images/Sigit.png'),
                      ),
                      Text(
                        name,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 18, color: Colors.black),
                      ),
                      Text(
                        role,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, color: Color(0xF9916B0D)),
                      ),
                      Text(
                        description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, color: Color(0xF9916B0D)),
                      ),
                      Text(
                        school,
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16, color: Color(0xF9916B0D)),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Page2()),
                          );
                        },
                        child: const Text('See More'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
