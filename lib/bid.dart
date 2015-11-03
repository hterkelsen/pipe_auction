class Bidder {
  final String name;
  final int bid;
  final int volume;
  final int receiptPoint;
  final int deliveryPoint;

  const Bidder(
      this.name, this.bid, this.volume, this.receiptPoint, this.deliveryPoint);

  int get sale => bid * volume;
}

const List<Bidder> bidders = const [
  const Bidder('1', 2, 121, 0, 9),
  const Bidder('2', 6, 114, 0, 7),
  const Bidder('3', 1, 194, 0, 4),
  const Bidder('4', 5, 137, 2, 8),
  const Bidder('5', 9, 192, 2, 5),
  const Bidder('6', 1, 179, 1, 2),
  const Bidder('7', 5, 76, 6, 6),
  const Bidder('8', 3, 105, 1, 1),
  const Bidder('9', 9, 144, 1, 1),
  const Bidder('10', 5, 138, 2, 5),
  const Bidder('11', 4, 173, 1, 5),
  const Bidder('12', 4, 75, 1, 7),
  const Bidder('13', 9, 137, 5, 6),
  const Bidder('14', 10, 143, 8, 8),
  const Bidder('15', 1, 84, 2, 7),
  const Bidder('16', 7, 61, 1, 8),
  const Bidder('17', 8, 99, 2, 6),
  const Bidder('18', 7, 128, 7, 8),
  const Bidder('19', 6, 137, 4, 8),
  const Bidder('20', 6, 75, 1, 5),
  const Bidder('21', 4, 191, 2, 6),
  const Bidder('22', 6, 53, 7, 7),
  const Bidder('23', 9, 93, 2, 7),
  const Bidder('24', 2, 148, 3, 6),
  const Bidder('25', 7, 102, 2, 7),
  const Bidder('26', 4, 60, 4, 7),
];
