class ContainerUsageRequestModel {
  final String containerName;
  final String volume;
  final int count;
  final String percentageUsed;

  ContainerUsageRequestModel({
    required this.containerName,
    required this.volume,
    required this.count,
    required this.percentageUsed,
  });

  factory ContainerUsageRequestModel.fromJson(Map<String, dynamic> json) {
    return ContainerUsageRequestModel(
      containerName: json['containerName'],
      volume: json['volume'],
      count: json['count'],
      percentageUsed: json['percentageUsed'] ,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'containerName': containerName,
      'volume': volume,
      'count': count,
      'percentageUsed': percentageUsed,
    };
  }
}
