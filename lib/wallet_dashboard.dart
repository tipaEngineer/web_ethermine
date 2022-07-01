class WalletDashboard {
  final String status;
  final Data data;


  const WalletDashboard({
    required this.status,
    required this.data,
  });

  factory WalletDashboard.fromJson(Map<String, dynamic> json) {
    return WalletDashboard(
      status: json['status'] as String,
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  final List<SharesData> statistics;
  final List<WorkersData> workers;
  final CurrentStatistics currentStatistics;
  final Settings settings;

  const Data({
    required this.statistics,
    required this.workers,
    required this.currentStatistics,
    required this.settings,
});

  factory Data.fromJson(Map<String, dynamic> json) {
    return Data(
        settings: Settings.fromJson(json['settings']),
        currentStatistics: CurrentStatistics.fromJson(json['currentStatistics']),
        statistics: List<SharesData>.from(json['statistics'].map((v)=>SharesData.fromJson(v))),
        workers: List<WorkersData>.from(json['workers'].map((v)=>WorkersData.fromJson(v))),
        );
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
      time: json['time'],
      lastSeen: json['lastSeen'],
      reportedHashrate: json['reportedHashrate'],
      currentHashrate: json['currentHashrate'],
      validShares: json['validShares'],
      invalidShares: json['invalidShares'],
      staleShares: json['staleShares'],
      activeWorkers: json['activeWorkers'],
    );
  }
}

class WorkersData {
  final String worker;
  final dynamic time;
  final dynamic lastSeen;
  final dynamic reportedHashrate;
  final dynamic currentHashrate;
  final dynamic validShares;
  final dynamic invalidShares;
  final dynamic staleShares;

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
      worker: json['worker'],
      time: json['time'],
      lastSeen: json['lastSeen'],
      reportedHashrate: json['reportedHashrate'],
      currentHashrate: json['currentHashrate'],
      validShares: json['validShares'],
      invalidShares: json['invalidShares'],
      staleShares: json['staleShares'],
    );
  }
}

class CurrentStatistics {
  final int time;
  final int lastSeen;
  final int reportedHashrate;
  final int currentHashrate;
  final int validShares;
  final int invalidShares;
  final int staleShares;
  final int activeWorkers;
  final int unpaid;

  const CurrentStatistics({
    required this.time,
    required this.reportedHashrate,
    required this.invalidShares,
    required this.activeWorkers,
    required this.currentHashrate,
    required this.lastSeen,
    required this.staleShares,
    required this.unpaid,
    required this.validShares,
});

  factory CurrentStatistics.fromJson(Map<String, dynamic> json){
    return CurrentStatistics(
        time: json['time'],
        reportedHashrate: json['reportedHashrate'],
        invalidShares: json['invalidShares'],
        activeWorkers: json['activeWorkers'],
        currentHashrate: json['currentHashrate'],
        lastSeen: json['lastSeen'],
        staleShares: json['staleShares'],
        unpaid: json['unpaid'],
        validShares: json['validShares']);
  }
}

class Settings {
  final String email;
  final int monitor;
  final int minPayout;
  final int suspended;

  const Settings({
    required this.email,
    required this.minPayout,
    required this.monitor,
    required this.suspended
});

  factory Settings.fromJson(Map<String, dynamic> json) {
    return Settings(
        email: json['email'],
        minPayout: json['minPayout'],
        monitor: json['monitor'],
        suspended: json['suspended']);
  }
}
