import 'package:app1/library/category.dart';
import 'package:app1/library/users.dart';
import 'package:flutter/material.dart';
import 'package:app1/library/dashboard.dart';
class Admin extends StatefulWidget {
  const Admin({super.key});
  @override
  State<Admin> createState() => _AdminState();
}
class _AdminState extends State<Admin> {
  int selectIndex = 0;
  final List<Object> menus = [Dashboard(), Category(), Users()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Row(
        children: [
          // ================= Sidebar =================
          Container(
            width: 250,
            color: const Color(0xFF5A5A5A),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "mini",
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
                const SizedBox(height:30),
                _sideBar(
                  "Dashboard",
                  0,
                  selectIndex,
                  () => setState(() => selectIndex = 0),
                ),
                _sideBar(
                  "Category",
                  1,
                  selectIndex,
                  () => setState(() => selectIndex = 1),
                ),
                _sideBar(
                  "Users",
                  2,
                  selectIndex,
                  () => setState(() => selectIndex = 2),
                ),
              ],
            ),
          ),

          // ================= Content =================
          Expanded(
            child: IndexedStack(
              index: selectIndex,
              children: const [Dashboard(), Category(), Users()],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _sideBar(String title, int index, int selectedIndex, VoidCallback onTap,) {
  return InkWell(
    onTap: onTap,
    child: Container(
      margin: const EdgeInsets.only(left: 60),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
        border: const Border(
          top: BorderSide(color: Colors.black, width:0.5),
          bottom: BorderSide(color: Colors.black, width:0.5),
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(
          color: selectedIndex == index ? Colors.green : Colors.white,
          fontSize: 16,
        ),
      ),
    ),
  );
}
