import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: const Projectofbuild()),
  );
}
class Projectofbuild extends StatefulWidget {
  const Projectofbuild({Key? key}) : super(key: key);

  @override
  State<Projectofbuild> createState() => _ProjectofbuildState();
}
class _ProjectofbuildState extends State<Projectofbuild> {
  List l1=["HELLO","HI","QEWDFYTG"];
  List  col=[Colors.lightGreen,Colors.orange,Colors.blueAccent];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("LIST OF BUILD"),
      ),
      body:ListView.builder(
        itemCount: l1.length,
          itemBuilder:(context,index) {
            return
              Column(children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        color: col[index],
                        child: Text(l1[index]),
                      ),
                    ),
                  ],
                ),
              ],);
          }
      ),
    );
  }
}
