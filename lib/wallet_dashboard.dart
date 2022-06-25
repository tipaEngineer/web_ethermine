class WalletDashboard {
  final String status;
  final List<SharesData> statistic;


  const WalletDashboard({
    required this.status,
    required this.statistic,
});

  factory WalletDashboard.fromJson(Map<String, dynamic> json) {
    return WalletDashboard(
      status: json['status'] as String,
      statistic: json['s']);
  }
}

class SharesData {
  final int time;
  final int lastSeen;
  final int reportedHashrate;
  final int currentHashrate;
  final int validShares;
  final int invalidShares;
  final int staleShares;
  final int activeWorkers;

  const SharesData({
    required this.time,
    required this.lastSeen,
    required this.reportedHashrate,
    required this.currentHashrate,
    required this.validShares,
    required this.invalidShares,
    required this.staleShares,
    required this.activeWorkers,
}

      );

  factory SharesData.fromJson(Map<String, dynamic> json){
    return SharesData(
        time: json['time'] as int,
        lastSeen: json['lastSeen'] as int,
        reportedHashrate: json['reportedHashrate'] as int,
        currentHashrate: json['currentHashrate'] as int,
        validShares: json['validShares'] as int,
        invalidShares: json['invalidShares'] as int,
        staleShares: json['staleShares'] as int,
        activeWorkers: json['activeWorkers'] as int,);
  }
  }
