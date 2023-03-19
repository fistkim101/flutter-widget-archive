import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoadingSpinnerLottie extends StatefulWidget {
  @override
  _LoadingSpinnerLottieState createState() => _LoadingSpinnerLottieState();
}

class _LoadingSpinnerLottieState extends State<LoadingSpinnerLottie> {
  @override
  Widget build(BuildContext context) {
    return Lottie.network(
      'https://assets10.lottiefiles.com/packages/lf20_fpq9wG8yV3.json',
    );
  }
}
