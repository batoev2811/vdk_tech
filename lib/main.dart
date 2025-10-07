import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/page/home.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_five.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_four.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_one.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_three.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_two.dart';
import 'package:vdk_tech/features/presentation/page/steps/step_two_v2.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/': (contex) => const HomePage(),
      '/stepone': (context) => const StepOne(),
      '/steptwo': (contex) => const StepTwo(),
      '/steptwov2': (context) => const StepTwoV2(),
      '/stepthree': (context) => const StepThree(),
      '/stepfour': (context) => const StepFour(),
      '/stepfive': (context) => const StepFive(),
    },
    
  ),
);