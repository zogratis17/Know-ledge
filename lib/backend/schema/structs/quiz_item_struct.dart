// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class QuizItemStruct extends FFFirebaseStruct {
  QuizItemStruct({
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

  static QuizItemStruct fromMap(Map<String, dynamic> data) => QuizItemStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        match: data['match'] as String?,
      );

  static QuizItemStruct? maybeFromMap(dynamic data) =>
      data is Map ? QuizItemStruct.fromMap(data.cast<String, dynamic>()) : null;

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

  static QuizItemStruct fromSerializableMap(Map<String, dynamic> data) =>
      QuizItemStruct(
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
  String toString() => 'QuizItemStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is QuizItemStruct &&
        name == other.name &&
        description == other.description &&
        match == other.match;
  }

  @override
  int get hashCode => const ListEquality().hash([name, description, match]);
}

QuizItemStruct createQuizItemStruct({
  String? name,
  String? description,
  String? match,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    QuizItemStruct(
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

QuizItemStruct? updateQuizItemStruct(
  QuizItemStruct? quizItem, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    quizItem
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addQuizItemStructData(
  Map<String, dynamic> firestoreData,
  QuizItemStruct? quizItem,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (quizItem == null) {
    return;
  }
  if (quizItem.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && quizItem.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final quizItemData = getQuizItemFirestoreData(quizItem, forFieldValue);
  final nestedData = quizItemData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = quizItem.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getQuizItemFirestoreData(
  QuizItemStruct? quizItem, [
  bool forFieldValue = false,
]) {
  if (quizItem == null) {
    return {};
  }
  final firestoreData = mapToFirestore(quizItem.toMap());

  // Add any Firestore field values
  quizItem.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getQuizItemListFirestoreData(
  List<QuizItemStruct>? quizItems,
) =>
    quizItems?.map((e) => getQuizItemFirestoreData(e, true)).toList() ?? [];
