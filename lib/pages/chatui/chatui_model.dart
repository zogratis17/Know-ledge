import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'chatui_widget.dart' show ChatuiWidget;
import 'package:flutter/material.dart';

class ChatuiModel extends FlutterFlowModel<ChatuiWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtPrompt widget.
  FocusNode? txtPromptFocusNode;
  TextEditingController? txtPromptTextController;
  String? Function(BuildContext, String?)? txtPromptTextControllerValidator;
  // Stores action output result for [Gemini - Generate Text] action in btnSubmit widget.
  String? response;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtPromptFocusNode?.dispose();
    txtPromptTextController?.dispose();
  }
}
