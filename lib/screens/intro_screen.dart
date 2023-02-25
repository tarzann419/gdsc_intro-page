import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  // creating a controller
  PageController _controller = PageController();
  bool onLastPage = false; //it is assumed that when we start the project, we are not on the last page

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            // what does this do?
            controller: _controller,
          onPageChanged: (index){

          },
          children: [
            Container(
              color: Colors.yellow,
              child: Image.asset('assets/images/sleep.jpeg'),
            ),
            Container(
              color: Colors.yellow,
              child: Image.asset('assets/images/work.jpeg'),
            ),
            Container(
              color: Colors.yellow,
              child: Image.asset('assets/images/exercise.jpeg'),
            )
          ],
        ),

          Container(
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Skip"),
                SmoothPageIndicator(controller: _controller, count: 3),
                Icon(Icons.arrow_forward),
              ],
            ),
          )
          

        ],
      ),
    );
  }
}
