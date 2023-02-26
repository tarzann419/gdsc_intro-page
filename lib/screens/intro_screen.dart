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

              setState(() {
                onLastPage = (index == 2);
                    print("$index, $onLastPage");
              });
          },
          children: [
            Container(
              color: Colors.yellow,
              child: Image.asset('assets/images/freak01.png'),
            ),
            Container(
              color: Colors.yellow,
              child: Image.asset('assets/images/exercise-removebg-preview.png'),
            ),
            Container(
              color: Colors.yellow,
              child: Image.asset('assets/images/sleep01.png'),
            )
          ],
        ),

          Container(
            alignment: Alignment(0, 0.85),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(onTap: (){
                  Navigator.pushNamed(context, 'tasks');
                },
                child: Text("Skip", style: TextStyle(color: Colors.grey),)
                ),

                SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  effect: SwapEffect(
                    dotColor: Colors.blue,
                    activeDotColor: Colors.white,
                    type: SwapType.yRotation,
                  ),
                ),

                onLastPage ? GestureDetector(onTap: (){
                  Navigator.pushNamed(context, 'intro');
                },
                child: Text("done")) : Icon(Icons.arrow_forward, color: Colors.grey,),
              ],
            ),
          )
          

        ],
      ),
    );
  }
}
