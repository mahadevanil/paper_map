import 'package:edu_app/constants.dart';
import 'package:edu_app/screens/sem1.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorTheme.bgColor,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height * 0.07),
              child: SizedBox(
                // color: const Color(0xFF0067ff),
                width: size.width,
                height: size.height * 0.15,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.03,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Course Details",
                                  style: GoogleFonts.poppins(
                                      fontSize: 25,
                                      fontWeight: FontWeight.w500)),
                              Text("June 28th, 2020",
                                  style: GoogleFonts.poppins(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.blueAccent)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => const Semester1()));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xFF0067ff),
                        ),
                        width: size.width,
                        height: size.height * 0.17,
                        child: Center(child: Text("Semester 1")),
                      ),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFce76fe),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 2")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFf9db38),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 3")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFed6f71),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 4")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFed6f71),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 5")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFed6f71),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 6")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFed6f71),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 7")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFFed6f71),
                      ),
                      width: size.width,
                      height: size.height * 0.17,
                      child: Center(child: Text("Semester 8")),
                    ),
                    SpaceH(
                      h: 0.03,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SpaceH extends StatelessWidget {
  SpaceH({
    Key? key,
    this.h,
  }) : super(key: key);
  final h;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * h,
    );
  }
}
