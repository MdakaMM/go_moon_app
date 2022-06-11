import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This is the variable name where you declare your statement that will make your device size
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    //Scaffold is where your widgets off app stays
    return Scaffold(
      //Safearea takes removes your widget from taking space of your top and bottom space of your phone
      body: SafeArea(
          child: Container(
              //color: Colors.blue,
              height: _deviceHeight,
              width: _deviceWidth,
              //This padding property is used to make the container in the middle
              padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _pageTitle(),
                  MyWidget(),
                ],
              ))),
    );
  }
}

//This is the function created saperatly wich can be called as method
Widget _pageTitle() {
  return const Text("#Go Moon",
      style: TextStyle(
          color: Colors.white, fontSize: 60, fontWeight: FontWeight.w800));
}

Widget _astroImageWidget() {
  return Container(
    decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/astro_moon.png"))),
  );
}

class MyWidget extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    List<String> items = [
      'James Webb Station',
      'Preneure Station',
    ];
    return Container(
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth * 0.05),
        width: _deviceWidth,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(53, 53, 53, 1.0),
            borderRadius: BorderRadius.circular(10)),
        child: DropdownButton(
            value: items.first,
            onChanged: (_) {},
            items: items.map((e) {
              return DropdownMenuItem(
                value: e,
                child: Text(e),
              );
            }).toList(),
            underline: Container(),
            dropdownColor: const Color.fromRGBO(53, 53, 53, 1.0),
            style: const TextStyle(color: Colors.white)));
  }
}
