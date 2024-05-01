import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            // color: Colors.purple,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      'Find Your Destination',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  height: 50,
                  child: CupertinoSearchTextField(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                  )),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 60,
          child: BottomAppBar(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.home)),
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                IconButton(onPressed: () {}, icon: Icon(Icons.favorite)),
                IconButton(onPressed: () {}, icon: Icon(Icons.people))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
