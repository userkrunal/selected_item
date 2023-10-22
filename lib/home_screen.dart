import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:selected_item/controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  FilterController controller=Get.put(FilterController());
  @override
  Widget build(BuildContext context) {

    return SafeArea(child: Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          Get.bottomSheet(BottomSheet(builder: (context) {
            return ListView.builder(itemBuilder:  (context, index) {
              return GestureDetector(
                onTap: () {
                  if(controller.selectedList[index]==false)
                    {
                      controller.selectedList[index]=true;
                    }
                  else
                    {
                      controller.selectedList[index]=false;
                    }
                },
                child: Obx(
                  () =>  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 20,
                     decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(30),border: Border.all(color: Colors.black),color: controller.selectedList[index]==true?Colors.purpleAccent:Colors.white),

                     child: Center(child: Text("${controller.filterList[index]}")),
                    ),
                  ),
                ),
              );
            },
              itemCount: controller.filterList.length,
            );
          }, onClosing: () { Get.back(); },));
        },child: Text("filter"),),
      ),
    ));
  }
}
