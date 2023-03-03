import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shaad_test/constants/color.dart';
import 'package:shaad_test/model/user_details_model.dart';
import 'package:shaad_test/repository/user_details_call.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.grey,
      body: Padding(
        padding: EdgeInsets.only(left: 25, right: 25),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: height * 0.05)),
            Icon(Icons.list),
            Padding(padding: EdgeInsets.only(top: height * 0.04)),
            Text(
              'Welcome,',
              style: TextStyle(fontSize: 25),
            ),
            FutureBuilder(
                future: fetchLoginModel(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    
                    print('data is:-'+snapshot.data!.address.toString());
                    return Text('loaded');
                  } else {
                    return Text("loading....");
                  }
                }),
            Text(
              "Shipper id",
              style: TextStyle(fontSize: 17),
            ),
            Text(
              "Branch id",
              style: TextStyle(fontSize: 17),
            ),
            Padding(padding: EdgeInsets.only(top: height * 0.05)),
            Text(
              "List Of suppliments",
              style: TextStyle(fontSize: 19),
            ),
            Padding(padding: EdgeInsets.only(top: height * 0.02)),
            SizedBox(
              height: height * 0.5,
              width: width * 0.8,
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: bgWhite,
                    height: height * 0.1,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Shipper Id"),
                              Text("Date: dd/mm//yyyy"),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Reciever Name"),
                            Text(
                              "Amount",
                              style: TextStyle(fontSize: 24),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Padding(padding: EdgeInsets.only(top: 20));
                },
              ),
            )
          ],
        ),
      ),
    ));
  }
}
