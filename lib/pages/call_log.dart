import 'package:flutter/material.dart';
import 'package:phone_call/functions/functions.dart';
class CallLog extends StatefulWidget {

  @override
  State<CallLog> createState() => _CallLogState();
}

class _CallLogState extends State<CallLog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Call Log',
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
                    flex: 1,
                    child: Container(
                        padding: EdgeInsets.only(top: 8, left: 10),
                        color: Color.fromARGB(255, 46, 106, 80),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 10,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: ((context, index) => contacttop()),
                        ))),
                Expanded(
                    flex: 2,
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
            )));
  }

  Widget contacttop() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 6),
      child: Column(children: [
        CircleAvatar(
          backgroundColor: Colors.transparent,
          backgroundImage:NetworkImage(
              'https://imgs.search.brave.com/_FRpfboLWPFeInFZsAxYHmRrkeAk0vPGXuwUhXZRcdA/rs:fit:844:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC5f/NGg2NUk0VEhzWVJW/SS1TSTJpYmRRSGFF/SyZwaWQ9QXBp'
            ),
          maxRadius: 60,
        ),
        SizedBox(height: 5),
        Text(
          'Balen',
          style: TextStyle(color: Colors.white, fontSize: 22),
        )
      ]),
    );
  }
}

Widget contactitems() {
  return Container(
    padding: EdgeInsets.all(5),
    margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
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
    shape:  RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10)),
      elevation: 0, 
      child: Row(
        children: [
          Expanded(
            flex: 40,
            child: Image.network(
              'https://imgs.search.brave.com/Nr-gnfJApDEZQxRVoLc8BbMuO85Yf5qfrmQYR0XLVXA/rs:fit:600:432:1/g:ce/aHR0cHM6Ly9wbHVz/cG5nLmNvbS9pbWct/cG5nL21hbi1jYWxs/aW5nLXBuZy16b2Jh/Y3otd2ktY2VqLTYw/MC5wbmc',fit: BoxFit.fill
            ),
          ),
          SizedBox(width: 15,),
          Expanded(
            flex: 40,
            child: Column(
              children: [
                Expanded(
                  flex: 75,
                  child: Center(child: TextButton(onPressed: (() => functions.callNumber()),child: Text('Balen Hussain',style: TextStyle(fontSize: 28,color: Color.fromARGB(255, 28, 174, 129),)),)),
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
        ),)
        ],
      ),
    ),
  );
}
