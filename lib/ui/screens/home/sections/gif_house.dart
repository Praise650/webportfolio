import 'package:flutter/material.dart';
class GifHouse extends StatelessWidget {
  const GifHouse({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      height: MediaQuery.of(context).size.height * 0.65,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
    );
  }
}
