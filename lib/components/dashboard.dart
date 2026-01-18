import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int selectedIndex = 0;
  final List<String> menus = [
    'Dashboard',
    'Category',
    'Levels',
    'Questions',
    'Answers',
    'Users',
    'Results',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 217, 217),
      body: Row(
        children: [
          /// SIDEBAR
          Container(
            width: 220,
            color: const Color(0xFF5A5A5A),
            child: Column(
              children: [
                const SizedBox(height: 30),

                // title
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "mini ",
                          style: TextStyle(color: Colors.white),
                        ),
                        TextSpan(
                          text: "Quiz\n",
                          style: TextStyle(color: Colors.green),
                        ),
                        TextSpan(
                          text: "Dashboard",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                /// MENU LIST
                ...List.generate(menus.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: _sideBar(menus[index], selectedIndex == index),
                  );
                }),
              ],
            ),
          ),

          /// CONTENT (later you can change page here)
          Expanded(
            flex: 6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  width: double.infinity,
                  height: 110,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Text.rich(
                          const TextSpan(
                            children: [
                              TextSpan(text: "Home > "),
                              const TextSpan(text: "Dashboard\n"),
                              const TextSpan(
                                text: "Dashboard",
                                style: TextStyle(color: Colors.green),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //
                Container(
                  width: double.infinity,
                  height: 150,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(30.0, 0, 15.0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: BoxBorder.all(
                                color: Colors.black38,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BoxBorder.fromLTRB(
                                        right: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        Text("Total Users"),
                                        const SizedBox(height: 30),
                                        Text("25"),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BoxBorder.fromLTRB(
                                        left: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        Text("Total Users"),
                                        const SizedBox(height: 30),
                                        Text("20"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 0, 30.0, 0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              border: BoxBorder.all(
                                color: Colors.black38,
                                width: 1.0,
                              ),
                            ),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BoxBorder.fromLTRB(
                                        right: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        const Text("Total Users"),
                                        const SizedBox(height: 30),
                                        const Text("25"),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      border: BoxBorder.fromLTRB(
                                        left: BorderSide(
                                          color: Colors.black12,
                                          width: 2.0,
                                        ),
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        const SizedBox(height: 20),
                                        Text("Total Users"),
                                        const SizedBox(height: 30),
                                        Text("20"),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                //content
                SizedBox(height: 20),
                Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30.0, 0, 20.0, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: BoxBorder.all(
                              width: 1,
                              color: Colors.black38,
                            ),
                          ),
                          height: 400,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Text(
                                  "Recent Quiz Attempts",
                                  style: TextStyle(
                                    color: Colors.black38,
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(15),
                                child: Container(
                                  width: double.infinity,
                                  height: 270,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: BoxBorder.all(
                                      width: 1,
                                      color: Colors.black12,
                                    ),
                                  ),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black12,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                    ),
                                                child: Text("Topic"),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text("Level"),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text("Status"),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: 35,
                                        decoration: BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              color: Colors.black12,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              flex: 2,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                      horizontal: 30,
                                                    ),
                                                child: Text("Math"),
                                              ),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text("Easy"),
                                            ),
                                            Expanded(
                                              flex: 2,
                                              child: Text("Active"),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      width: 200,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.black26,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.center,
                                              child: Text("<"),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                  ),
                                                ),
                                              ),
                                              child: Text("1"),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                    color: Colors.black,
                                                    width: 1,
                                                  ),
                                                ),
                                              ),
                                              child: Text(">"),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 30.0, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.black38,
                              width: 1.0,
                            ),
                          ),
                          height: 400,
                          child:Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:EdgeInsets.all(15),
                                child:Text(
                                  "Fav Topic",
                                  style:TextStyle(
                                    color:Colors.black,
                                    fontSize:16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  width:double.infinity,
                                  height:270,
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    border: Border.all(
                                      color:Colors.black12,
                                      width:1,
                                    ),
                                  ),
                                  child:Column(
                                    children: [
                                      Container(
                                        width:double.infinity,
                                        height:35,
                                        decoration:BoxDecoration(
                                          border: Border(
                                            bottom: BorderSide(
                                              width:1,
                                              color:Colors.black12,
                                            )
                                          ),
                                        ),
                                        child:Row(
                                          children: [
                                            Expanded(
                                              flex: 3,
                                              child:Padding(
                                                padding: const EdgeInsets.fromLTRB(30,0,0,0),
                                                child: Text("Topic"),
                                              ),
                                            ),
                                            Expanded(
                                              flex:3,
                                              child:Padding(
                                                padding: const EdgeInsets.fromLTRB(0,0,0,0),
                                                child: Text("Total Users"),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width:double.infinity,
                                        height:35,
                                        decoration: BoxDecoration(
                                          border:Border(
                                            bottom: BorderSide(
                                              color:Colors.black12,
                                              width: 1,
                                            ),
                                          ),
                                        ),
                                        child:Row(
                                          children: [
                                            Expanded(
                                              flex:3,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(30,0,0,0),
                                                child: Text("General knowledge"),
                                              )
                                            ),
                                            Expanded(
                                              flex:3,
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(20,0,0,0),
                                                child: Text("20"),
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ), //dd
        ],
      ),
    );
  }
}

Widget _sideBar(String title, [bool active = false]) {
  return Container(
    margin: const EdgeInsets.only(left: 60),
    width: 180,
    height: 60,
    decoration: BoxDecoration(
      border: const Border(
        top: BorderSide(color: Colors.white24, width: 0.6),
        bottom: BorderSide(color: Colors.white24, width: 0.6),
      ),
    ),
    padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
    child: Text(
      title,
      style: TextStyle(
        color: active ? Colors.green : Colors.white,
        fontSize: 15,
      ),
    ),
  );
}
