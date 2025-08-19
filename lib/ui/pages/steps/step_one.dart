import 'package:flutter/material.dart';
import 'package:vdk_tech/ui/widgets/dropzone_widget.dart';
import 'package:vdk_tech/ui/widgets/format_file.dart';

class StepOne extends StatelessWidget {
  const StepOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(child: StepOneState());
  }
}

class StepOneState extends StatefulWidget {
  const StepOneState({super.key});

  @override
  State<StatefulWidget> createState() {
    return _StepOneState();
  }
}

class _StepOneState extends State<StepOneState> {
  @override
  Widget build(Object context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Для получения технического условия, загрузите все необходимые документы и нажмите кнопку \'Далее\'',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 10),
          FormatFile(),
          Text('Копия паспорта', style: TextStyle(fontSize: 18)),
          SizedBox(height: 10),
          DropzoneWidget(),
        ],
      ),
    );
  }
}
