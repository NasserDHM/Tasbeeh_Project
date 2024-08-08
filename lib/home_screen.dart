import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int count = 0;

  counter() {
    setState(() {
      count++;
    });
  }

  reset() {
    setState(() {
      count = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 5, 67, 46),
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "﴾ فاذكروني أذكركم واشكروا لي ولا تكفرون ﴿",
          style: TextStyle(
              fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.50,
                  height: MediaQuery.of(context).size.height / 2.10,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(offset: Offset(1, 9), blurRadius: 20)],
                  ),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 3, 237, 245)),
                      child: Text(
                        count.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .titleLarge
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox( height: 30,),
                Transform.translate(offset: Offset(1, 9),
                child: Container(
                  width: 190,
                  height: 190,
                  decoration: BoxDecoration(color: Color.fromARGB(255, 3, 237, 245),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(50),
                    bottomLeft: Radius.circular(50),
                  ),
                    boxShadow: [BoxShadow(
                      offset : Offset(1, 9),
                     blurRadius: 20,
                     color: Colors.black
                    ),
                  ],),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(onPressed: () => counter(), child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 244, 12, 12),
                        shape: BoxShape.circle,
                        ),
                        
                      ),style:ElevatedButton.styleFrom(maximumSize: Size(80, 80)) ,
                      )
                      ,SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        ElevatedButton(onPressed: () => reset(), child:Icon(Icons.wifi_protected_setup),
                         style:ElevatedButton.styleFrom(maximumSize: Size(80, 80),foregroundColor: Colors.red),
                      ),
                      ],)

                    ],
                  ),
                ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
