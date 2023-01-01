import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tarsbinary_demo_app/screen/guideline_screen_3.dart';

class GuidelineScreen2 extends StatelessWidget {
  const GuidelineScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              height: 300.0,
              width: double.infinity,
              decoration: new BoxDecoration(
                color: Colors.black,
                borderRadius: new BorderRadius.vertical(
                    bottom: new Radius.elliptical(
                        MediaQuery.of(context).size.width, 300.0)),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Universe ",
                        style: TextStyle(color: Colors.white, fontSize: 30)),
                    Text("Entertaiment",
                        style: TextStyle(color: Colors.red, fontSize: 30))
                  ],
                ),
              ),
            ),
          ),
          Expanded(flex: 1, child: Container()),
          Container(
            height: 100,
            width: 200,
            child: Text(
              "industry. Lorem Ipsum has been the industry's standard dummy text ",
              style: TextStyle(fontSize: 18),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => GuidelineScreen3(),
              ));
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            style: ButtonStyle(
                shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18))),
                elevation: MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(Colors.black)),
          ),
          Spacer()
        ],
      ),
    ));
  }
}
