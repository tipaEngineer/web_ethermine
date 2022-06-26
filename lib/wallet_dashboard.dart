class WalletDashboard {
  final String status;
  final List<Data> data;

  const WalletDashboard({
    required this.status,
    required this.data,
  });

  factory WalletDashboard.fromJson(Map<String, dynamic> json) {
    return WalletDashboard(
      status: json['status'] as String,
      data: json['data'] as List<Data>,
    );
  }
}

class Data {
  final List<SharesData> statistic;
  final List<WorkersData> workers;

  const Data({
    required this.statistic,
    required this.workers,
});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(statistic: json['statistic'] as List<SharesData>, workers: json['workers'] as List<WorkersData>);
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
  });

  factory SharesData.fromJson(Map<String, dynamic> json) {
    return SharesData(
      time: json['time'] as int,
      lastSeen: json['lastSeen'] as int,
      reportedHashrate: json['reportedHashrate'] as int,
      currentHashrate: json['currentHashrate'] as int,
      validShares: json['validShares'] as int,
      invalidShares: json['invalidShares'] as int,
      staleShares: json['staleShares'] as int,
      activeWorkers: json['activeWorkers'] as int,
    );
  }
}

class WorkersData {
  final String worker;
  final int time;
  final int lastSeen;
  final int reportedHashrate;
  final int currentHashrate;
  final int validShares;
  final int invalidShares;
  final int staleShares;

  const WorkersData({
    required this.worker,
    required this.time,
    required this.lastSeen,
    required this.reportedHashrate,
    required this.currentHashrate,
    required this.validShares,
    required this.invalidShares,
    required this.staleShares,
  });

  factory WorkersData.fromJson(Map<String, dynamic> json) {
    return WorkersData(
      worker: json['worker'] as String,
      time: json['time'] as int,
      lastSeen: json['lastSeen'] as int,
      reportedHashrate: json['reportedHashrate'] as int,
      currentHashrate: json['currentHashrate'] as int,
      validShares: json['validShares'] as int,
      invalidShares: json['invalidShares'] as int,
      staleShares: json['staleShares'] as int,
    );
  }
}

