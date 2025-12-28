import 'package:flutter/material.dart';
import '../../../components/main_button.dart';
import '../../../constants.dart';
import '../../../responsive.dart';

class Jumbotron extends StatelessWidget {
  const Jumbotron({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context)
                    ? MainAxisAlignment.start
                    : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context)
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.center,
                children: <Widget>[
                  if (isMobile(context))
                    Image.asset(
                      'images/mypic.png',
                      height: size.height * 0.3,
                    ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ankit ',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 32,
                            fontWeight: FontWeight.w800,
                            color: kTextColor,
                          ),
                        ),
                        TextSpan(
                          text: 'Pratap Samrat',
                          style: TextStyle(
                            fontSize: isDesktop(context) ? 64 : 32,
                            fontWeight: FontWeight.w800,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      fontSize: isDesktop(context) ? 64 : 32,
                      fontWeight: FontWeight.w200,
                    ),
                  ),

                  // Text(
                  //   'Online Today!',
                  //   style: TextStyle(
                  //     fontSize: isDesktop(context) ? 64 : 32,
                  //     fontWeight: FontWeight.w200
                  //   ),
                  // ),

                  const SizedBox(height: 10),
                  Text(
                    'Help us in making this world a better place for animals.',
                    textAlign:
                        isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(
                      fontSize: isDesktop(context) ? 36 : 18,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    runSpacing: 10,
                    children: <Widget>[
                      MainButton(
                        title: 'GET STARTED',
                        color: kPrimaryColor,
                        tapEvent: () {},
                      ),
                      const SizedBox(width: 10),
                      MainButton(
                        title: 'WATCH VIDEO',
                        color: kSecondaryColor,
                        tapEvent: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          if (isDesktop(context) || isTab(context))
            Expanded(
              child: Image.asset(
                'images/mypic.png',
                height: size.height * 0.7,
              ),
            ),
        ],
      ),
    );
  }
}
