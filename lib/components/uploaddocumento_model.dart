import '/flutter_flow/flutter_flow_util.dart';
import 'uploaddocumento_widget.dart' show UploaddocumentoWidget;
import 'package:flutter/material.dart';

class UploaddocumentoModel extends FlutterFlowModel<UploaddocumentoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode1;
  TextEditingController? nomeTextController1;
  String? Function(BuildContext, String?)? nomeTextController1Validator;
  // State field(s) for obs widget.
  FocusNode? obsFocusNode;
  TextEditingController? obsTextController;
  String? Function(BuildContext, String?)? obsTextControllerValidator;
  bool isDataUploading_uploadData3x = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData3x = [];
  List<String> uploadedFileUrls_uploadData3x = [];

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode2;
  TextEditingController? nomeTextController2;
  String? Function(BuildContext, String?)? nomeTextController2Validator;
  bool isDataUploading_uploadData3 = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData3 = [];
  List<String> uploadedFileUrls_uploadData3 = [];

  // State field(s) for Nome widget.
  FocusNode? nomeFocusNode3;
  TextEditingController? nomeTextController3;
  String? Function(BuildContext, String?)? nomeTextController3Validator;
  bool isDataUploading_uploadData3xb = false;
  List<FFUploadedFile> uploadedLocalFiles_uploadData3xb = [];
  List<String> uploadedFileUrls_uploadData3xb = [];

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nomeFocusNode1?.dispose();
    nomeTextController1?.dispose();

    obsFocusNode?.dispose();
    obsTextController?.dispose();

    nomeFocusNode2?.dispose();
    nomeTextController2?.dispose();

    nomeFocusNode3?.dispose();
    nomeTextController3?.dispose();
  }
}
