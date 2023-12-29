import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Column(children: [
            //college banner
            Container(
              height: 140,
              //color: Colors.black,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS11mOzdQanlpJBgnEGVz1LNwZ3lRkCcEXJYg&usqp=CAU"),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0x730c5302),
                        offset: Offset(8, 5),
                        blurRadius: 6),
                  ]),
            ),
            //sign in text
            Text(
              "SIGN IN",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff893f0b)),
            ),
            //sized boxes
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Enter your user name",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                  hintText: "Enter Password",
                  prefixIcon: Icon(Icons.password),
                ),
              ),
            ),
            //------------------button--------------------------//
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("SUBMIT"),
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      minimumSize: Size(150, 40),
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("CANCEL"),
                  style: ElevatedButton.styleFrom(
                      elevation: 20,
                      minimumSize: Size(150, 40),
                      primary: Color(0xffcd2516),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //--------------FORGET PASSWORD---------------------//
            TextButton(
                onPressed: () {},
                child: Text(
                  "Foeget password",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            //--------------FORGET PASSWORD---------------------//
            TextButton(
                onPressed: () {},
                child: Text(
                  "Don't have a account",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff000000),
                  ),
                )),

            //<---------------circle avataer------------>//
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/jpeg;base64,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"),
                  radius: 30,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                  radius: 20,
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/png;base64,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"),
                  radius: 30,
                ),
              ],
            )
          ]),
        ));
  }
}
