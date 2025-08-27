import '/components/navbarpaciente_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editarperfilpaciente_widget.dart' show EditarperfilpacienteWidget;
import 'package:flutter/material.dart';

class EditarperfilpacienteModel
    extends FlutterFlowModel<EditarperfilpacienteWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading_imagepacient = false;
  FFUploadedFile uploadedLocalFile_imagepacient =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_imagepacient = '';

  // State field(s) for telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for estadocivil widget.
  String? estadocivilValue;
  FormFieldController<String>? estadocivilValueController;
  // State field(s) for nascionalidade widget.
  FocusNode? nascionalidadeFocusNode;
  TextEditingController? nascionalidadeTextController;
  String? Function(BuildContext, String?)?
      nascionalidadeTextControllerValidator;
  // State field(s) for datanasci widget.
  FocusNode? datanasciFocusNode;
  TextEditingController? datanasciTextController;
  String? Function(BuildContext, String?)? datanasciTextControllerValidator;
  // State field(s) for profissiao widget.
  FocusNode? profissiaoFocusNode;
  TextEditingController? profissiaoTextController;
  String? Function(BuildContext, String?)? profissiaoTextControllerValidator;
  // Model for navbarpaciente component.
  late NavbarpacienteModel navbarpacienteModel;

  @override
  void initState(BuildContext context) {
    navbarpacienteModel = createModel(context, () => NavbarpacienteModel());
  }

  @override
  void dispose() {
    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    nascionalidadeFocusNode?.dispose();
    nascionalidadeTextController?.dispose();

    datanasciFocusNode?.dispose();
    datanasciTextController?.dispose();

    profissiaoFocusNode?.dispose();
    profissiaoTextController?.dispose();

    navbarpacienteModel.dispose();
  }
}
