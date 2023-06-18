import 'package:flutter/material.dart';
import 'package:phone_call/pages/call_log.dart';

class Emergency extends StatefulWidget {
  @override
  State<Emergency> createState() => _EmergencyState();
}

class _EmergencyState extends State<Emergency> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Emergency',
          style: TextStyle(fontSize: 35),
        ),
        backgroundColor: Color.fromARGB(255, 201, 33, 33),
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
          color: Color.fromARGB(255, 201, 33, 33),
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
                        itemBuilder: ((context, index) => emergencyitems()),
                      ))),
            ],
          )),
    );
  }

  Widget emergencyitems() {
    return Container(
        padding: EdgeInsets.all(8),
        child: Row(
          children: [
           Expanded(
              flex: 50,
              child:Container(
                padding: EdgeInsets.all(30),
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
                child: Image.network(
                  'https://imgs.search.brave.com/-BjvBk7PykjuDbKo0F9qkRapFCRodVCy0jAzl87-YMo/rs:fit:1200:1200:1/g:ce/aHR0cHM6Ly9zdGF0/aWMudmVjdGVlenku/Y29tL3N5c3RlbS9y/ZXNvdXJjZXMvcHJl/dmlld3MvMDAwLzQy/NC8zMjkvb3JpZ2lu/YWwvdmVjdG9yLXBv/bGljZS1jYXItaWNv/bi5qcGc',
                  fit: BoxFit.fill),)
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 50,
              child:Container(
                padding: EdgeInsets.all(30),
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
                child: Image.network(
                  'https://imgs.search.brave.com/e3aQayhu6wgrMoDSUGYghIce9SWzUOSrp0EC1mlBFpQ/rs:fit:474:225:1/g:ce/aHR0cHM6Ly90c2Ux/Lm1tLmJpbmcubmV0/L3RoP2lkPU9JUC43/QlVQUktjTFpVaWlT/Q1FLdVhQV3JBSGFI/YSZwaWQ9QXBp',
                  fit: BoxFit.fill),)
            )
          ],
        ));
  }
}
