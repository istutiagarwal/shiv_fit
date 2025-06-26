import 'package:hive/hive.dart';

import '../../../../utils/hive_type_ids.dart';

part '../hive_adapters/container_usage_response_model.g.dart';

@HiveType(typeId: HiveTypeIds.containerUsageResponseModel)
class ContainerUsageResponseModel {
  @HiveField(0)
  final String? containerName;
  @HiveField(1)
  final String? volume;
  @HiveField(2)
  final int? count;
  @HiveField(3)
  final String? percentageUsed;

  ContainerUsageResponseModel({
    this.containerName,
    this.volume,
    this.count,
    this.percentageUsed,
  });

  factory ContainerUsageResponseModel.fromJson(Map<String, dynamic> json) {
    return ContainerUsageResponseModel(
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
