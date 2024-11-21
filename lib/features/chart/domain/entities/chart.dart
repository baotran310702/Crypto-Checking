class Chart {
  final int startTime;
  final int closeTime;
  final String symbol;
  final String interval;
  final int firstTradeId;
  final int lastTradeId;
  final String openPrice;
  final String closePrice;
  final String highPrice;
  final String lowPrice;
  final String baseAssetVolume;
  final int numberOfTrades;
  final bool isClosed;
  final String quoteAssetVolume;
  final String takerBuyBaseVolume;
  final String takerBuyQuoteVolume;
  final String ignore;

  Chart({
    required this.startTime,
    required this.closeTime,
    required this.symbol,
    required this.interval,
    required this.firstTradeId,
    required this.lastTradeId,
    required this.openPrice,
    required this.closePrice,
    required this.highPrice,
    required this.lowPrice,
    required this.baseAssetVolume,
    required this.numberOfTrades,
    required this.isClosed,
    required this.quoteAssetVolume,
    required this.takerBuyBaseVolume,
    required this.takerBuyQuoteVolume,
    required this.ignore,
  });
}
