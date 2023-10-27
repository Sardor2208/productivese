import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../constants/colors.dart';
import '../constants/icons.dart';

class TaskScreen extends StatefulWidget {
  const TaskScreen({super.key});

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              keyboardType: TextInputType.number,
              onChanged: (value){
                text = value;
                setState(() {});
              },
              // autofocus: true,
              cursorColor: Colors.amberAccent,
              cursorHeight: 38,
              cursorWidth: 20,
              cursorRadius: const Radius.circular(18),
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock,color:white,),
                suffixIcon: Icon(Icons.remove_red_eye_outlined,color: white,),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: white
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                ),
              ),
              style: const TextStyle(color: white,fontSize: 38),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(text,style: const TextStyle(color: white),),
          ],
        ),
      ),
      drawer: const Drawer(),
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SvgPicture.asset(AppIcons.appbar),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SvgPicture.asset(AppIcons.apbar),
                Positioned(
                  height: 24,
                  width: 20,
                  child: Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        height: 10,
                        width: 10,
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: const Text(
                          " 2",
                          style: TextStyle(color: white,fontSize: 9.1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

        ],
        backgroundColor: dark,
        automaticallyImplyLeading: false,
        title: Builder(builder: (context) {
          return Row(
            children: [
              GestureDetector(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: SvgPicture.asset(AppIcons.burger),
              ),
            ],
          );
        }),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        width: double.maxFinite,
        height: MediaQuery.of(context).padding.bottom + 70,
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              offset: Offset(0, -4),
              blurRadius: 12,
              color: Color.fromRGBO(0, 0, 0, .25),
            ),
          ],
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          color: Color(0xFF1C1E2D),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.shop),
                const Text(
                  "Tasks",
                  style: TextStyle(
                      color: blue, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.botom),
                const Text(
                  "Expense",
                  style: TextStyle(
                      color: whites, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.bottom),
                const Text(
                  "Create",
                  style: TextStyle(
                      color: whites, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.battom),
                const Text(
                  "Calendar",
                  style: TextStyle(
                      color: whites, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(AppIcons.bottoms),
                const Text(
                  "Stats",
                  style: TextStyle(
                      color: whites, fontSize: 12, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
