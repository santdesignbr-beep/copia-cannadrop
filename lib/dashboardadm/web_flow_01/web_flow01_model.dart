import '/components/navbarpaciente_widget.dart';
import '/dashboardadm/side_nav/side_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'web_flow01_widget.dart' show WebFlow01Widget;
import 'package:flutter/material.dart';

class WebFlow01Model extends FlutterFlowModel<WebFlow01Widget> {
  ///  State fields for stateful widgets in this page.

  // Model for sideNav component.
  late SideNavModel sideNavModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode1;
  TextEditingController? fullNameTextController1;
  String? Function(BuildContext, String?)? fullNameTextController1Validator;
  bool isDataUploading_uploadData = false;
  FFUploadedFile uploadedLocalFile_uploadData =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData = '';

  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for fullName widget.
  FocusNode? fullNameFocusNode2;
  TextEditingController? fullNameTextController2;
  String? Function(BuildContext, String?)? fullNameTextController2Validator;
  bool isDataUploading_uploadData = false;
  FFUploadedFile uploadedLocalFile_uploadData =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadData = '';

  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered1 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered2 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered3 = false;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered4 = false;

  @override
  void initState(BuildContext context) {
    sideNavModel = createModel(context, () => SideNavModel());
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    sideNavModel.dispose();
    fullNameFocusNode1?.dispose();
    fullNameTextController1?.dispose();

    fullNameFocusNode2?.dispose();
    fullNameTextController2?.dispose();

    navbarpacienteModel.dispose();
  }
}
