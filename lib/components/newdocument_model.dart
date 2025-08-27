import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'newdocument_widget.dart' show NewdocumentWidget;
import 'package:flutter/material.dart';

class NewdocumentModel extends FlutterFlowModel<NewdocumentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  bool isDataUploading_uploadDatadoc = false;
  FFUploadedFile uploadedLocalFile_uploadDatadoc =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDatadoc = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    obsFocusNode?.dispose();
    obsTextController?.dispose();
  }
}
