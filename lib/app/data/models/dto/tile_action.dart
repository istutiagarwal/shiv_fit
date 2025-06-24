import 'package:flutter/material.dart';

class TileAction {
  final String label;
  final String? description;
  final String? icon;

  TileAction({
    required this.label,
    this.description,
    this.icon,
  });
}
