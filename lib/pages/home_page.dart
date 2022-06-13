import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:go_moon/widgets/custom_dropdown_btn.dart';

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
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _pageTitle(),
                      BookRideWidget(),
                    ],
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: AstroImageWidget(),
                  ),
                ],
              ))),
    );
  }
}

//This is the function created saperatly wich can be called as method
Widget _pageTitle() {
  return const Text("Go Moon",
      style: TextStyle(
          color: Colors.white, fontSize: 60, fontWeight: FontWeight.w800));
}

class AstroImageWidget extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  AstroImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      height: _deviceHeight * 0.50,
      width: _deviceWidth * 0.65,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage("assets/images/astro_moon.png"))),
    );
  }
}

// Widget _astroImageWidget() {
//   return Container(
//     decoration: const BoxDecoration(
//         image: DecorationImage(
//             fit: BoxFit.fill,
//             image: AssetImage("assets/images/astro_moon.png"))),
//   );
// }

class DestinationDropdownWidget extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  DestinationDropdownWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return CustomDropdownBtn(
      values: const [
        'James Webb Station',
        'Preneure Station',
      ],
      width: _deviceWidth,
    );
  }
}

class TravellersInfoWidget extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  TravellersInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomDropdownBtn(
          values: const ['1', '2', '3', '4'],
          width: _deviceWidth * 0.45,
        ),
        CustomDropdownBtn(
          values: const ['Economy', 'Business', 'First', 'Last'],
          width: _deviceWidth * 0.40,
        ),
      ],
    );
  }
}

class BookRideWidget extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  BookRideWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        height: _deviceHeight * 0.25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DestinationDropdownWidget(),
            TravellersInfoWidget(),
            RideButton(),
          ],
        ));
  }
}

class RideButton extends StatelessWidget {
  late double _deviceHeight, _deviceWidth;
  RideButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Container(
        margin: EdgeInsets.only(bottom: _deviceHeight * 0.01),
        width: _deviceWidth,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10)),
        child: MaterialButton(
            onPressed: () {},
            child: const Text(
              "Book Ride",
              style: TextStyle(color: Colors.black),
            )));
  }
}
