import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';

class DropzoneWidget extends StatefulWidget {
  const DropzoneWidget({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DropzoneWidget();
  }
}

class _DropzoneWidget extends State<DropzoneWidget> {
  late DropzoneViewController controller;



  @override
  Widget build(Object context) {
    return Container(
      height: 100,
      color: Colors.blue,
      child: DottedBorder(
        options: RectDottedBorderOptions(
          dashPattern: [10, 5],
          strokeWidth: 1,
          borderPadding: EdgeInsets.all(4),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.upload_file_outlined, size: 50, color: Colors.white),
                  Text(
                    'Перетащите файлы или нажмите для загрузки',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ],
              ),
            ),
            DropzoneView(
              onCreated: (controller) => this.controller = controller,
              onDropFiles: acceptFile,
            ),
          ],
        ),
      ),
    );
  }
  Future acceptFile(dynamic event) async {
    final name = event.name;
    final mime = await controller.getFileMIME(event);
    final bytes = await controller.getFileSize(event);
    final url = await controller.createFileUrl(event);
  }
}
