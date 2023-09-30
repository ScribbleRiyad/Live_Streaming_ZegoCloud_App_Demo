

import 'package:flutter/material.dart';
import '../../Widgets/textformfield_widgets.dart';
import '../Live Page/live_page.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  TextEditingController userNameController = TextEditingController();
  TextEditingController userIDController = TextEditingController();
  TextEditingController liveIDController = TextEditingController();
  final formKey = GlobalKey<FormState>();



  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(

        body: SingleChildScrollView(
          child: Form(
            key:formKey ,
            child: SizedBox(
                height: size.height,
                width: size.width,
                child: Column(children: [
                  ClipPath(
                      clipper: CustomClipperDesign(),
                      child: Container(
                          height: size.height * 0.42,
                          color: const Color.fromRGBO(23, 48, 86, 1),
                          child: Stack(children: [
                            Image.asset(
                              'assets/images/map_img.png',
                              height: size.height,
                              width: size.width,
                            ),
                          ]))),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: MyTextFormField(
                      keyboardType: TextInputType.text,
                      controller: userNameController,
                      hintText: "Enter Your User Name",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your User Name';
                        }

                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: MyTextFormField(
                      keyboardType: TextInputType.text,
                      controller: userIDController,
                      hintText: "Enter Your User ID",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Your User ID';
                        }

                        return null;
                      },
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: MyTextFormField(
                      keyboardType: TextInputType.text,
                      controller: liveIDController,
                      hintText: "Enter Live ID",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Enter Live ID';
                        }

                        return null;
                      },
                    ),
                  ),

                  ElevatedButton(

                    child: const Text('Start a Live'),
                    onPressed:(){
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LivePage(
                            liveID: liveIDController.text,
                            isHost: true, userID: userIDController.text, userName: userNameController.text,
                          ),
                        ),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(

                      child: const Text('Join a Live'),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LivePage(
                              liveID: liveIDController.text,
                              isHost: false, userID: userIDController.text, userName: userNameController.text,
                            ),
                          ),
                        );
                      }
                  )


                ])),
          ),
        ));
  }
}

class CustomClipperDesign extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double w = size.width;
    double h = size.height;

    path.lineTo(0, h / 1.2 - 50);
    path.quadraticBezierTo(20, h / 1.2, 80, h / 1.2);
    path.lineTo(w, h / 1.2);
    path.lineTo(w - 80, h / 1.2);
    path.quadraticBezierTo(w - 20, h - 50, w, h);
    path.lineTo(w, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
