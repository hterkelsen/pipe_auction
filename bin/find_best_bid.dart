import 'package:pipe_auction/bid.dart';
import 'package:pipe_auction/auction.dart';

main() {
  var bestBidders = mostProfitableAuction(bidders);
  var profit = bestBidders.fold(0, (acc, bidder) => acc + bidder.sale);

  print('The best set of bidders is: ');
  for (var bidder in bestBidders) {
    print(bidder.name);
  }
  print('The profit from this set of bidders is: \$$profit');
}
