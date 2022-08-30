import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/beer_controller.dart';

class BeerApi extends StatefulWidget {
  const BeerApi({Key? key}) : super(key: key);

  @override
  State<BeerApi> createState() => _BeerApiState();
}

class _BeerApiState extends State<BeerApi> {
  // //----------------------------------------------------Getx controller-----------------------------------------------------------------------//

  final storeController = Get.find<BeerController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //------------------------------------------------appbar----------------------------------------------------------------------------//

      appBar: AppBar(
        title: const Text("Beer API"),
      ),

      //-------------------------------------beer api ListView---------------------------------------------------------------------------//
      body: buildListview(),
      );
  }
  //---------------------------------------------BuildListViewBuilder---------------------------------------------------------------------//
  Widget buildListview() {
    return ListView.builder(
      itemCount: storeController.beerList.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          child: Obx(
            //-----------------------------------------Card for View -----------------------------------------------------------------------//
            () => Card(
              child: Padding(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //--------------------------------------network Image------------------------------------------------//
                        Image.network(
                          storeController.beerList[index].imageUrl,
                          height: 80,
                          width: 50,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text("id :"),
                                  Text(
                                    storeController.beerList[index].id
                                        .toString(),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("Name :"),
                                  Text(
                                    storeController.beerList[index].name
                                        .toString(),
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text("Description :"),
                                  Expanded(
                                    child: Text(
                                      storeController
                                          .beerList[index].description
                                          .toString(),
                                      style: const TextStyle(
                                          overflow: TextOverflow.ellipsis),
                                      maxLines: 3,
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const Text("firstBrewed :"),
                                  Text(
                                    storeController.beerList[index].firstBrewed
                                        .toString(),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
