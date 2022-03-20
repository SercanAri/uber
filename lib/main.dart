import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 4,
          title: const Text('Uber'),
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
            color: Colors.white,
            child: Center(
              child: Text('S',
              style: TextStyle
              (color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
              ),
             )
            ),
           ),
          actions:const [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(Icons.supervised_user_circle_sharp),
           ),
           ],
         ),
      body:
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Padding(
              //padding: const EdgeInsets.symmetric(vertical:8.0),
              padding:const EdgeInsets.only(bottom:8.0),
              child: Text(
              'Hoşgeldiniz',
              style: TextStyle(
                fontSize: 30.0, 
                fontWeight: FontWeight.w700,
              ),
              ),
            ),
           Row(
             children: [
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.only(right: 16.0),
                   child: Container(
                   height: 50,
                   color: Colors.blueGrey.withOpacity(0.5),
                   child:const Align(alignment: Alignment.centerLeft,
                   child : Padding(
                     padding: EdgeInsets.only(left: 8.0),
                     child: Text('Ara'),
                   ),
                   ),
                   ),
                 ),
               ),
                Icon(Icons.search)
             ],
           ),
           const SizedBox(height: 16.0),
           Text('Geçmiş Yolculuklarınız', style: TextStyle(fontWeight: FontWeight.w700,
            ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(padding: const EdgeInsets.all(12.0),
              child: Row(
                children: const [
                  Icon(Icons.taxi_alert_rounded, color:Colors.white),
                  Expanded(
                    child: Text('Ankara - Çubuk', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w300
                    ),
                    ),
                  ),
                  Text('56,90TL',
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                ],
              ),
              ),
            ),
            SizedBox(
              height: 8.0,),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(padding: const EdgeInsets.all(12.0),
              child: Row(
                children: const [
                  Icon(Icons.taxi_alert_rounded, color:Colors.white),
                  Expanded(
                    child: Text('Ankara - Çorum', style: TextStyle(color: Colors.white,
                    fontWeight: FontWeight.w300
                    ),
                    ),
                  ),
                  Text('265,90TL',
                  style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),)
                ],
              ),
              ),
            )
          ],
          ),
        ),
      ),
    );
  }
}