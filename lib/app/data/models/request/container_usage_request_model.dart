import 'package:hive/hive.dart';

import '../../../../utils/hive_type_ids.dart';

part '../hive_adapters/container_usage_request_model.g.dart';

@HiveType(typeId: HiveTypeIds.containerUsageRequestModel)
class ContainerUsageRequestModel {
  @HiveField(0)
  final String? containerName;
  @HiveField(1)
  final String? volume;
  @HiveField(2)
  final int? count;
  @HiveField(3)
  final String? percentageUsed;

  ContainerUsageRequestModel({
     this.containerName,
     this.volume,
    this.count,
    this.percentageUsed,
  });

  factory ContainerUsageRequestModel.fromJson(Map<String, dynamic> json) {
    return ContainerUsageRequestModel(
      containerName: json['containerName'],
      volume: json['volume'],
      count: json['count'],
      percentageUsed: json['percentageUsed'],
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

  String toString() => 'ContainerUsageRequestModel('
      'containerName: $containerName,'
      'volume: $volume,'
      'count: $count,'
      'percentageUsed: $percentageUsed,'
      ')';
}
