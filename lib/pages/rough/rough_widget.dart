import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'rough_model.dart';
export 'rough_model.dart';

class RoughWidget extends StatefulWidget {
  const RoughWidget({super.key});

  static String routeName = 'rough';
  static String routePath = '/rough';

  @override
  State<RoughWidget> createState() => _RoughWidgetState();
}

class _RoughWidgetState extends State<RoughWidget> {
  late RoughModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoughModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Container(
                  width: 369.0,
                  height: 383.69,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: MarkdownBody(
                    data: '''''',
                    selectable: true,
                    onTapLink: (_, url, __) => launchURL(url!),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
