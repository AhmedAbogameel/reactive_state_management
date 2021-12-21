import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'controller.dart';

class View extends StatelessWidget {

  View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    debugPrint('rebuilding!');
    return Scaffold(
      body: Center(
        child: CupertinoSwitch(
          value: controller.value,
          onChanged: controller.toggleSwitch,
        ),
        // child: StreamBuilder<bool>(
        //   initialData: injector.controller.value,
        //   stream: injector.controller.streamController.stream,
        //   builder: (context, snapshot) {
        //     debugPrint('Switch rebuilding!');
        //     return ;
        //   }
        // ),
      ),
    );
  }
}
