import 'package:flutter/material.dart';
import '../../helpers/api_helpers.dart';
import '../../modals/covid_19.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("COVID-19"),
        backgroundColor: Colors.indigo[300],
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: APIHelper.apiHelper.getData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: Text("Error : ${snapshot.error}"),
            );
          } else if (snapshot.hasData) {
            List<Corona>? data = snapshot.data;
            return (data != null)
                ? ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (context, i) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Stack(
                              alignment: Alignment(.8, .8),
                              children: [
                                Container(
                                  child: Text(
                                    "Country",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  height: 200,
                                  width: 400,
                                  alignment: Alignment.topCenter,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    color: Colors.teal,
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Covid.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "${data[i].country}",
                                      style: TextStyle(
                                          color: Colors.black38,
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5),
                                    Image(
                                      image: NetworkImage("${data[i].flag}"),
                                      height: 30,
                                      width: 60,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "      cases\n-----------------\n    ${data[i].cases}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 1,
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    )
                                  ],
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.teal[100],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "      deaths \n ----------------\n       ${data[i].deaths}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 1,
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    )
                                  ],
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.teal[200],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "       Active\n -----------------\n\t\t\t\t\t\t${data[i].active}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 1,
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    )
                                  ],
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.teal[300],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "    critical\n-----------------\n        ${data[i].critical}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 1,
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    )
                                  ],
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.teal[400],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "   population\n-------------------\n   ${data[i].population}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 1,
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    )
                                  ],
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.teal[500],
                                ),
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                child: Text(
                                  "  oneCasePer\n-------------------\n         ${data[i].oneCasePerPeople}",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20),
                                ),
                                height: 120,
                                width: 150,
                                decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                      color: Colors.black38,
                                      blurRadius: 10.0,
                                      spreadRadius: 1,
                                      offset: Offset(
                                        5,
                                        5,
                                      ),
                                    )
                                  ],
                                  border: Border.all(color: Colors.black),
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(20),
                                  ),
                                  color: Colors.teal[600],
                                ),
                              ),
                            ],
                          ),
                        ],
                      );
                    },
                  )
                : const Center(
                    child: Text("No data found..."),
                  );
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        },
      ),
    );
  }
}
