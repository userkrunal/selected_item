import 'package:get/get.dart';

class FilterController extends GetxController
{
  RxList filterList=[
    'a1',
    'a2',
    'a3',
    'a4',
    'a5',
  ].obs;
  RxList selectedList=[
    false,
    false,
    false,
    false,
    false,
  ].obs;
}