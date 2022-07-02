class CurrentStats {
  final String status;
  final CurrentStatsData data;

  const CurrentStats ({
    required this.status,
    required this.data,
});

  factory CurrentStats.fromJson(Map<String, dynamic> json) {
    return CurrentStats(
        status: json['status'],
        data: CurrentStatsData.fromJson(json['data']),
    );
  }
}

class CurrentStatsData {
  final num time;
  final num lastSeen;
  final num reportedHashrate;
  final num currentHashrate;
  final num validShares;
  final num invalidShares;
  final num staleShares;
  final num activeWorkers;
  final num averageHashrate;
  final num unpaid;
  final num coinsPerMin;
  final num usdPerMin;
  final num btcPerMin;

  const CurrentStatsData({
    required this.invalidShares,
    required this.staleShares,
    required this.validShares,
    required this.currentHashrate,
    required this.reportedHashrate,
    required this.activeWorkers,
    required this.averageHashrate,
    required this.unpaid,
    required this.lastSeen,
    required this.time,
    required this.btcPerMin,
    required this.coinsPerMin,
    required this.usdPerMin,
  });

  factory CurrentStatsData.fromJson(Map<String, dynamic> json){
    return CurrentStatsData(
        invalidShares: json['invalidShares'],
        staleShares: json['staleShares'],
        validShares: json['validShares'],
        currentHashrate: json['currentHashrate'],
        reportedHashrate: json['reportedHashrate'],
        activeWorkers: json['activeWorkers'],
        averageHashrate: json['averageHashrate'],
        unpaid: json['unpaid'],
        lastSeen: json['lastSeen'],
        time: json['time'],
        btcPerMin: json['btcPerMin'],
        coinsPerMin: json['coinsPerMin'],
        usdPerMin: json['usdPerMin']);
  }
}