import 'package:flutter/material.dart';

class Allcontacts extends StatefulWidget {
  @override
  State<Allcontacts> createState() => _AllcontactsState();
}

class _AllcontactsState extends State<Allcontacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'All Contact',
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
              child: Image.network('https://imgs.search.brave.com/smM1SX53ZLNNRe8qQo2QZ_j0840oiVVUrZuXbhYwd2c/rs:fit:600:812:1/g:ce/aHR0cDovL2ZyZWVk/ZXNpZ25maWxlLmNv/bS91cGxvYWQvMjAx/OC8wMy9Zb3VuZy1t/YW4tY2FsbGluZy1T/dG9jay1QaG90by5q/cGc',
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
