import 'package:flutter/material.dart';
import 'package:vdk_tech/features/presentation/widget/dropzone_widget.dart';

class StepFour extends StatelessWidget{
  const StepFour({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: StepFourState(),
    );
  }
}

class StepFourState extends StatefulWidget {
  const StepFourState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepFourState();
  }
  
}
/**
 * 4 этап строительство сетей через МУП Водоканал
 * Поэтому на данном этапе производится загрузка документов со стороны сотрудников МУП Водоканал
 * После окончания переход на этап 5
 */
class _StepFourState extends State<StepFourState> {
  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            ],
          ),
        ],
      ),
    );
  }

  
}