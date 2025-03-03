import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'dash_board_widget.dart' show DashBoardWidget;
import 'package:flutter/material.dart';

class DashBoardModel extends FlutterFlowModel<DashBoardWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
