import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'newpost_widget.dart' show NewpostWidget;
import 'package:flutter/material.dart';

class NewpostModel extends FlutterFlowModel<NewpostWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  bool isDataUploading_uploadData = false;
  FFUploadedFile uploadedLocalFile_uploadData =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();
  }
}
