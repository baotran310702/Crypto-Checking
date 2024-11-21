import 'package:crypto/features/user/domain/entities/chart.dart';

class ChartModel extends Chart {
  ChartModel({
    required super.startTime,
    required super.closeTime,
    required super.symbol,
    required super.interval,
    required super.firstTradeId,
    required super.lastTradeId,
    required super.openPrice,
    required super.closePrice,
    required super.highPrice,
    required super.lowPrice,
    required super.baseAssetVolume,
    required super.numberOfTrades,
    required super.isClosed,
    required super.quoteAssetVolume,
    required super.takerBuyBaseVolume,
    required super.takerBuyQuoteVolume,
    required super.ignore,
  });

  factory ChartModel.fromJson(Map<String, dynamic> json) {
    return ChartModel(
      startTime: json['t'] as int,
      closeTime: json['T'] as int,
      symbol: json['s'] as String,
      interval: json['i'] as String,
      firstTradeId: json['f'] as int,
      lastTradeId: json['L'] as int,
      openPrice: json['o'] as String,
      closePrice: json['c'] as String,
      highPrice: json['h'] as String,
      lowPrice: json['l'] as String,
      baseAssetVolume: json['v'] as String,
      numberOfTrades: json['n'] as int,
      isClosed: json['x'] as bool,
      quoteAssetVolume: json['q'] as String,
      takerBuyBaseVolume: json['V'] as String,
      takerBuyQuoteVolume: json['Q'] as String,
      ignore: json['B'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      't': startTime,
      'T': closeTime,
      's': symbol,
      'i': interval,
      'f': firstTradeId,
      'L': lastTradeId,
      'o': openPrice,
      'c': closePrice,
      'h': highPrice,
      'l': lowPrice,
      'v': baseAssetVolume,
      'n': numberOfTrades,
      'x': isClosed,
      'q': quoteAssetVolume,
      'V': takerBuyBaseVolume,
      'Q': takerBuyQuoteVolume,
      'B': ignore,
    };
  }
}
