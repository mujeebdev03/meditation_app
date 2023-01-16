import 'package:flutter/material.dart';

class FixHeight12 extends StatelessWidget {
  const FixHeight12({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12,
    );
  }
}

class FixWidth12 extends StatelessWidget {
  const FixWidth12({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12,
    );
  }
}
