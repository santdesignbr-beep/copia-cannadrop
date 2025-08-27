import '/flutter_flow/flutter_flow_util.dart';
import 'uploaddocumento_copy_widget.dart' show UploaddocumentoCopyWidget;
import 'package:flutter/material.dart';

class UploaddocumentoCopyModel
    extends FlutterFlowModel<UploaddocumentoCopyWidget> {
  ///  Local state fields for this component.

  String? avatarUrl = '';

  List<String> imagesUrls = [];
  void addToImagesUrls(String item) => imagesUrls.add(item);
  void removeFromImagesUrls(String item) => imagesUrls.remove(item);
  void removeAtIndexFromImagesUrls(int index) => imagesUrls.removeAt(index);
  void insertAtIndexInImagesUrls(int index, String item) =>
      imagesUrls.insert(index, item);
  void updateImagesUrlsAtIndex(int index, Function(String) updateFn) =>
      imagesUrls[index] = updateFn(imagesUrls[index]);

  bool isOpen = false;

  String? singleImageUrl = '';

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }
}
