import 'package:shiv_fit/app/data/models/request/container_usage_request_model.dart';

class WaterContainerStatsRequestModel {
  final String? mostUsedContainer;
  final String? tip;
  final String? suggestion;
  final String? badge;
  final List<ContainerUsageRequestModel>? containers;

  WaterContainerStatsRequestModel({
    this.mostUsedContainer,
    this.tip,
    this.suggestion,
    this.badge,
    this.containers,
  });

  factory WaterContainerStatsRequestModel.fromJson(Map<String, dynamic> json) {
    return WaterContainerStatsRequestModel(
      mostUsedContainer: json['mostUsedContainer'],
      tip: json['tip'],
      suggestion: json['suggestion'],
      badge: json['badge'],
      containers: (json['containers'] as List<dynamic>?)
          ?.map((e) => ContainerUsageRequestModel.fromJson(e))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'mostUsedContainer': mostUsedContainer,
      'tip': tip,
      'suggestion': suggestion,
      'badge': badge,
      'containers': containers?.map((e) => e.toJson()).toList(),
    };
  }

  WaterContainerStatsRequestModel copyWith({
    String? mostUsedContainer,
    String? tip,
    String? suggestion,
    String? badge,
    List<ContainerUsageRequestModel>? containers,
  }) {
    return WaterContainerStatsRequestModel(
      mostUsedContainer: mostUsedContainer ?? this.mostUsedContainer,
      tip: tip ?? this.tip,
      suggestion: suggestion ?? this.suggestion,
      badge: badge ?? this.badge,
      containers: containers ?? this.containers,
    );
  }

  @override
  String toString() {
    return 'WaterContainerStatsRequestModel('
        'mostUsedContainer: $mostUsedContainer, '
        'tip: $tip, '
        'suggestion: $suggestion, '
        'badge: $badge, '
        'containers: $containers'
        ')';
  }
}
