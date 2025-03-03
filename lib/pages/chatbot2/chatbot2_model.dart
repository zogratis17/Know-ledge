import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chatbot2_widget.dart' show Chatbot2Widget;
import 'package:flutter/material.dart';

class Chatbot2Model extends FlutterFlowModel<Chatbot2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in TextField widget.
  String? response;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
