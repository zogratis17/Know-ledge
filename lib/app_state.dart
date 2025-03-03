import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _refreshkey = 0;
  int get refreshkey => _refreshkey;
  set refreshkey(int value) {
    _refreshkey = value;
  }

  int _correctMatches = 0;
  int get correctMatches => _correctMatches;
  set correctMatches(int value) {
    _correctMatches = value;
  }

  int _attempts = 0;
  int get attempts => _attempts;
  set attempts(int value) {
    _attempts = value;
  }

  List<bool> _matchedItems = [true, true, true];
  List<bool> get matchedItems => _matchedItems;
  set matchedItems(List<bool> value) {
    _matchedItems = value;
  }

  void addToMatchedItems(bool value) {
    matchedItems.add(value);
  }

  void removeFromMatchedItems(bool value) {
    matchedItems.remove(value);
  }

  void removeAtIndexFromMatchedItems(int index) {
    matchedItems.removeAt(index);
  }

  void updateMatchedItemsAtIndex(
    int index,
    bool Function(bool) updateFn,
  ) {
    matchedItems[index] = updateFn(_matchedItems[index]);
  }

  void insertAtIndexInMatchedItems(int index, bool value) {
    matchedItems.insert(index, value);
  }
}
