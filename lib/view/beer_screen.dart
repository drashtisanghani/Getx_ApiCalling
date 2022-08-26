import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/view/beer_api_.dart';

import '../controller/beer_controller.dart';

class BeerScreen extends StatefulWidget {
  const BeerScreen({Key? key}) : super(key: key);

  @override
  State<BeerScreen> createState() => _BeerScreenState();
}

class _BeerScreenState extends State<BeerScreen> {
  final homeController = Get.put<BeerController>(BeerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GetX Demo")),
      drawer: const Drawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.to(() => const BeerApi());
              },
              child: const Text("Goto Screen 2"),
            ),
          ],
        ),
      ),
    );
  }
}
