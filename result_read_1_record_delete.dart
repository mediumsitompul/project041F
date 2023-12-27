import 'package:flutter/material.dart';
import 'read_1_record.dart';
import 'main.dart';
import 'server.dart';
import 'delete_success.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

class ResultRead1RecordDelete extends StatelessWidget {
  //DECLARATION THE PARAMETER
  final String id1_,
      student_id1_,
      student_name1_,
      gender1_,
      address1_,
      major1_,
      phone1_,
      datetime_entry2_;

  const ResultRead1RecordDelete({
    super.key,
    required this.id1_,
    required this.student_id1_,
    required this.student_name1_,
    required this.gender1_,
    required this.address1_,
    required this.major1_,
    required this.phone1_,
    required this.datetime_entry2_,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Center(child: Text("OPERATION CRUD\n (READ 1 RECORD)")),
        ),
        body: MyWidget(
          //SEND PARAMETER FROM STATELESSWIDGET TO STATEFULWIDGET
          id1a_: id1_,
          student_id1a_: student_id1_,
          student_name1a_: student_name1_,
          gender1a_: gender1_,
          address1a_: address1_,
          major1a_: major1_,
          phone1a_: phone1_,
          datetime_entry2a_: datetime_entry2_,
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  //DECLRATION THE PARAMETER
  final String id1a_,
      student_id1a_,
      student_name1a_,
      gender1a_,
      address1a_,
      major1a_,
      phone1a_,
      datetime_entry2a_;

  const MyWidget({
    super.key,
    //REQUIRED THE PARAMETER
    required this.id1a_,
    required this.student_id1a_,
    required this.student_name1a_,
    required this.gender1a_,
    required this.address1a_,
    required this.major1a_,
    required this.phone1a_,
    required this.datetime_entry2a_,
  });

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  TextEditingController hpController = TextEditingController();
  var nomor_hp;

  //..............................................................................
  Future<void> _delete1() async {

    final url = Uri.parse("https://mediumsitompul.com/crud_restapi/delete.php");
    

    //=====================================
    // if (hpController.text == "") {
    //   setState(() {
    //     nomor_hp = widget.phone1a_;
    //   });
    // } else {
    //   nomor_hp = hpController.text;
    // }
    //=====================================

    var response = await http.post(url, body: {
      "student_id": widget.student_id1a_.toString(),
      //"phone": nomor_hp,
    });

    final result1 = jsonDecode(response.body);

    print("result1+++++++++++++++++++");
    print(result1);

    if (result1.toString() == 'success'.toString()) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DeleteSuccess(),
          ));
    }
  }
  //..............................................................................

//vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          //.....................................................................
          SizedBox(
            height: 10,
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("1. Student_Id:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        //statesController: xxx,
                        onPressed: () {},
                        child: Text(widget.student_id1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("2. Student_name:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.student_name1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("3. Gender:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.gender1a_))),
              ),
            ],
          ),
          //.....................................................................
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("4. Address:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.address1a_))),
              ),
            ],
          ),
          //.....................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(primary: Colors.teal),
                        child: Text("5. Major:"))),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text(widget.major1a_))),
              ),
            ],
          ),
          //.....................................................................

          //.....................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(primary: Colors.teal),
                      child: Text("6. Nomor HP:")),
                ),
              ),
              SizedBox(
                height: 36,
                width: 150,
                child: TextField(
                  controller: hpController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: widget.phone1a_),
                ),
              ),

              // Padding(
              //   padding: const EdgeInsets.all(2.0),
              //   child: Align(
              //       alignment: Alignment.centerLeft,
              //       child: ElevatedButton(
              //           onPressed: () {}, child: Text(widget.phone1a_))),
              // ),
            ],
          ),

          // //...................................................................

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(120, 40, 2, 2),
                child: Align(
                    alignment: Alignment.centerRight,
                    child: ElevatedButton(
                        onPressed: () {
                          _delete1();
                          print(hpController.text);
                          print(widget.phone1a_);
                        },
                        style: ElevatedButton.styleFrom(primary: Colors.black),
                        child: Text("DELETE DATA"))),
              ),
            ],
          ),
        ],
      ),
      //................... floatingActionButton >>> IN SCAFFOLD() ................
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          print('Tombol Reffresh di pencettt');

          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MyApp(),
              ));
        }),
        tooltip: 'Reload data',
        child: Icon(Icons.ac_unit),
        foregroundColor: Colors.white,
        backgroundColor: Colors.red,
      ),
      //...........................................................................
    );
  }
}
