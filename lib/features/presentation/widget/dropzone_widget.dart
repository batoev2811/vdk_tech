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
  String message = 'Перетащите файлы или нажмите для загрузки';
  bool highlighted = false;
  Color color = Colors.transparent;
  bool isFileSelected = false;
  String url = '';

  void displayFile(dynamic filePicked) async {
    url = await controller.createFileUrl(filePicked);
    setState(() {
      isFileSelected = true;
    });
  }

  @override
  Widget build(Object context) {
    return Container(
      color: Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue.shade200,
        ),
        height: 100,

        child: GestureDetector(
          onTap: () async {
            final event = await controller.pickFiles();
            displayFile(event.first);
          },
          child: DottedBorder(
            options: RectDottedBorderOptions(
              dashPattern: [10, 5],
              strokeWidth: 1,
              borderPadding: EdgeInsets.all(4),
              color: highlighted ? Colors.red : color,
            ),
            child: Stack(
              children: [
                DropzoneView(
                  onCreated: (controller) => this.controller = controller,
                  cursor: CursorType.grab,
                  onHover: () {
                    setState(() => highlighted = true);
                    print('Zone 1 hovered');
                  },
                  onLeave: () {
                    setState(() => highlighted = false);
                    print('Zone 1 left');
                  },
                  onDropFile: (file) async {
                    print('Zone 1 drop: ${file.name}');
                    setState(() {
                      message = '${file.name} dropped';
                      highlighted = false;
                      color = Colors.greenAccent;
                    });
                    final lastModified = await controller.getFileLastModified(
                      file,
                    );
                    print(lastModified);
                  },
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.upload_file_outlined,
                        size: 50,
                        color: Colors.white,
                      ),
                      Text(
                        message,
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
