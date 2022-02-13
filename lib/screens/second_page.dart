import 'package:flutter/material.dart';

import '../components/reusable_button.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text(
          "Befit",
          style: TextStyle(
            fontSize: 25.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(252, 249, 62, 1),
      ),
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 252, 249, 62),
          height: height,
          width: width,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: height * 0.53,
                width: width,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("images/secondpage.jpg"),
                  ),
                ),
              ),
              Positioned(
                top: height * 0.4,
                child: Container(
                  height: height * 0.5,
                  width: width,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60.0),
                          topRight: Radius.circular(60.0))),
                  child: Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Customize",
                          style: TextStyle(
                              letterSpacing: 1.5,
                              fontSize: 40.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade700),
                        ),
                        Column(
                          children: [
                            Text(
                              'Feel free to adjust your workout',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade700),
                            ),
                            Text(
                              ' & diet settings according to',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade700),
                            ),
                            Text(
                              ' your comfort.',
                              style: TextStyle(
                                  letterSpacing: 1.5,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.grey.shade700),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                child: Container(
                                    width: 30.0,
                                    height: 7.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: const Color(0xFF768ded),
                                    )),
                              ),
                            ),
                            SizedBox(
                              child: Container(
                                  width: 10.0,
                                  height: 7.0,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50.0),
                                    color: Colors.grey,
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: SizedBox(
                                child: Container(
                                    width: 10.0,
                                    height: 7.0,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50.0),
                                      color: Colors.grey,
                                    )),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            ReusableButton(
                              borderRadius: BorderRadius.circular(50.0),
                              backgroundColor: Colors.transparent,
                              fontSize: 18.0,
                              width: MediaQuery.of(context).size.width / 3.3,
                              height: 55.0,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.grey,
                              text: "Skip",
                              onPressed: () {},
                            ),
                            ReusableButton(
                              borderRadius: BorderRadius.circular(50.0),
                              backgroundColor: Colors.black,
                              fontSize: 16.0,
                              width: MediaQuery.of(context).size.width / 3.3,
                              height: 55.0,
                              fontWeight: FontWeight.w500,
                              textColor: Colors.white,
                              text: "NEXT",
                              onPressed: () {
                                 Navigator.of(context).pushNamed("/thirdPage");

                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
