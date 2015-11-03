import 'bid.dart';
import 'powerset.dart';

List<Bidder> mostProfitableAuction(List<Bidder> bidders) {
  var maxProfit = 0;
  var bestBidders;
  for (var auction in powerset(bidders)) {
    if (!canAccept(auction)) continue;
    var profit = auction.fold(0, (acc, bid) => acc + bid.sale);
    if (profit > maxProfit) {
      bestBidders = auction;
    }
  }
  return bestBidders;
}

bool canAccept(List<Bidder> bids, {int capacity: 500}) {
  var caps = new List.filled(10, 0);
  for (var bidder in bids) {
    for (var i = bidder.receiptPoint; i <= bidder.deliveryPoint; i++) {
      caps[i] += bidder.volume;
      if (caps[i] > capacity) return false;
    }
  }
  return true;
}
