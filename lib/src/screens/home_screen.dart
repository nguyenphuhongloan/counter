import 'package:example_getx/src/action/increment.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DemoCounter extends StatelessWidget {
  
  Widget build(BuildContext context) {
    final Increament a = Get.put(Increament());
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              color: Colors.transparent,
              width: size.width,
              height: size.height*0.75,
              child: Center(
                child: Obx(() => Text('${a.show()}',
                style: TextStyle(
                  fontSize: 18
                ),)),
              ),
            ),
             Row(
              children: [
                GestureDetector(
                  onTap: a.decrement,
                  child: Container(
                    color: Colors.blue,
                    height: 50,
                    width: size.width / 2,
                    child: Center(
                      child: Text(
                        "-",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: a.increament,
                  child: Container(
                    color: Colors.red,
                    height: 50,
                    width: size.width / 2,
                    child: Center(
                      child: Text(
                        "+",
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: GestureDetector(
                onTap: a.reset,
                child: Container(
                  width: size.width/2,
                  height: 50,
                  color: Colors.yellow,
                  child: Center(child: Text("Reset")),
                ),
              ),
            ) 
          ],
        ),
      ),
    );
  }
}
