import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
          style: TextStyle(fontSize: 35),
        ),
        backgroundColor: Color.fromARGB(255, 46, 106, 80),
        elevation: 0,
        toolbarHeight: 80,
        actions: [
          IconButton(
              onPressed: null,
              icon: Icon(
                Icons.menu,
                color: Colors.white,
                size: 50,
              )),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: Container(
          color: Color.fromARGB(255, 46, 106, 80),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Container(
                      padding: EdgeInsets.only(top: 4),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        scrollDirection: Axis.vertical,
                        itemBuilder: ((context, index) => contactitems()),
                      ))),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 28, 174, 129),
        onPressed: null,
        child: Icon(
          Icons.add,
          size: 50,
        ),
      ),
    );
  }

  Widget contactitems() {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                offset: Offset(1, 2),
                spreadRadius: 2,
                blurRadius: 7)
          ]),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 0,
        child: Row(
          children: [
            Expanded(
              flex: 40,
              child: Image.network('https://imgs.search.brave.com/LWaUATAFEs8YRJ5uY3qghrpaBKra54xF-Hn9wicC8oo/rs:fit:1200:1125:1/g:ce/aHR0cHM6Ly93d3cu/Y29uZmVyZW5jZWNh/bGwuY28udWsvYmxv/Zy93cC1jb250ZW50/L3VwbG9hZHMvMjAx/My8wOC9idXNpbmVz/c21hbi1oYXZpbmct/Y29uZmVyZW5jZS1j/YWxsLmpwZw',
                  fit: BoxFit.fill),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              flex: 40,
              child: Column(
                children: [
                  Expanded(
                    flex: 75,
                    child: Center(
                        child: Text(
                      'Balen Hussain',
                      style: TextStyle(fontSize: 28,color: Color.fromARGB(255, 28, 174, 129)),
                    )),
                  ),
                  Expanded(flex: 25, child: Text('${DateTime.now()}')),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: Icon(
                Icons.call_received,
                size: 30,
                color: Color.fromARGB(255, 28, 174, 129),
              ),
            )
          ],
        ),
      ),
    );
  }
}
