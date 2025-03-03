// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuizItemsStruct extends FFFirebaseStruct {
  QuizItemsStruct({
    String? name,
    String? description,
    String? match,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _match = match,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  // "match" field.
  String? _match;
  String get match => _match ?? '';
  set match(String? val) => _match = val;

  bool hasMatch() => _match != null;

  static QuizItemsStruct fromMap(Map<String, dynamic> data) => QuizItemsStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        match: data['match'] as String?,
      );

  static QuizItemsStruct? maybeFromMap(dynamic data) => data is Map
      ? QuizItemsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'match': _match,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'match': serializeParam(
          _match,
          ParamType.String,
        ),
      }.withoutNulls;

  static QuizItemsStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizItemsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        match: deserializeParam(
          data['match'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'QuizItemsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuizItemsStruct &&
        name == other.name &&
        description == other.description &&
        match == other.match;
  }

  @override
  int get hashCode => const ListEquality().hash([name, description, match]);
}

QuizItemsStruct createQuizItemsStruct({
  String? name,
  String? description,
  String? match,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuizItemsStruct(
      name: name,
      description: description,
      match: match,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

QuizItemsStruct? updateQuizItemsStruct(
  QuizItemsStruct? quizItems, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quizItems
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuizItemsStructData(
  Map<String, dynamic> firestoreData,
  QuizItemsStruct? quizItems,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quizItems == null) {
    return;
  }
  if (quizItems.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quizItems.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quizItemsData = getQuizItemsFirestoreData(quizItems, forFieldValue);
  final nestedData = quizItemsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quizItems.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuizItemsFirestoreData(
  QuizItemsStruct? quizItems, [
  bool forFieldValue = false,
]) {
  if (quizItems == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quizItems.toMap());

  // Add any Firestore field values
  quizItems.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuizItemsListFirestoreData(
  List<QuizItemsStruct>? quizItemss,
) =>
    quizItemss?.map((e) => getQuizItemsFirestoreData(e, true)).toList() ?? [];
