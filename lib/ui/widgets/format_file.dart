import 'package:flutter/material.dart';
import 'package:vdk_tech/ui/widgets/dropzone_widget.dart';

class FormatFile extends StatelessWidget {
  const FormatFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            height: 100,
            color: Colors.grey.shade200,
            child: Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 20),
                  Icon(Icons.info, size: 16, color: Colors.blue),
                  SizedBox(width: 10),
                  Flexible(
                    child: Text(
                      'Внимание! Требования к прикрепляемым документам: Размер файла не более 30 Мб, '
                      'длина имени не более 100 символов. Допустимые форматы: jpg, jpeg, png, pdf, tiff, doc, docx, rtf, sig, odt, rar, zip, 7z.',
                      style: TextStyle(fontSize: 14, color: Colors.blue.shade800),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 100,
            color: Colors.blue,
            child: SizedBox(width: 10),
          ),
        ],
      ),
    );
  }
}
