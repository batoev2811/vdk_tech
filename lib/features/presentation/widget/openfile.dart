import 'package:file_picker/file_picker.dart';

void _pickFile() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    allowMultiple: true,
    dialogTitle: 'Файлы',
    type: FileType.custom,
    allowedExtensions: ['pdf', 'doc', 'docx', 'rtf', 'jpg', 'jpeg', 'png', 'tiff','sig', 'odt', 'rar', 'zip', '7z'],
  );

  if(result == null) return;

  PlatformFile file = result.files.single;

}