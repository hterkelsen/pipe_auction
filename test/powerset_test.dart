import 'package:test/test.dart';

import 'package:pipe_auction/powerset.dart';

main() {
  group('powerset', () {
    test('returns the empty set for an empty list', () {
      expect(powerset([]), equals([[]]));
    });

    test('returns the list itself given just one item', () {
      expect(
          powerset([1]),
          equals([
            [],
            [1]
          ]));
    });

    test('returns the power set of a list of 3 items', () {
      expect(
          powerset([1, 2, 3]),
          equals([
            [],
            [1],
            [2],
            [1, 2],
            [3],
            [1, 3],
            [2, 3],
            [1, 2, 3]
          ]));
    });
  });
}
