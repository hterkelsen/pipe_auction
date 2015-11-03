import 'package:pipe_auction/bid.dart';
import 'package:pipe_auction/auction.dart';

main() {
  var bestBidders = mostProfitableAuction(bidders);
  var revenue = revenueFor(bestBidders);

  print('The best set of bidders is: ');
  for (var bidder in bestBidders) {
    print(bidder.name);
  }
  print('The revenue from this set of bidders is: \$$revenue');
}
