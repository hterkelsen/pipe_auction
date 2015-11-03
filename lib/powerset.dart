import 'dart:math';

Iterable<List> powerset(List items) sync* {
  var flags = new List<bool>.filled(items.length, false);
  var total = pow(2, items.length) - 1;
  yield const [];
  for (var i = 0; i < total; i++) {
    for (var j = 0; j < flags.length; j++) {
      if (flags[j] == true) {
        flags[j] = false;
      } else {
        flags[j] = true;
        break;
      }
    }
    var subset = [];
    for (var j = 0; j < flags.length; j++) {
      if (flags[j]) {
        subset.add(items[j]);
      }
    }
    yield subset;
  }
}
