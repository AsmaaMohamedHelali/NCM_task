import 'dart:async';

class ExpansionItemStream {
  final StreamController<bool> _controller = StreamController<bool>.broadcast();
  late bool _isExpanded;

  Stream<bool> get isExpandedStream => _controller.stream;

  ExpansionItemStream({required bool initialState}) {
    _isExpanded = initialState;
    _updateStream();
  }

  void updateCurrentExpansionState(bool newState) {
    _isExpanded = newState;
    _updateStream();
  }

  void _updateStream() {
    _controller.add(_isExpanded);
  }

  void dispose() {
    _controller.close();
  }
}
