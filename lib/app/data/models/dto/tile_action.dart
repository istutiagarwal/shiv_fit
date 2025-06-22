import 'package:flutter/material.dart';

class TileAction {
  final String label;
  final String? description;
  final String? icon;
  //final VoidCallback onTap;

  TileAction({
    required this.label,
    //required this.onTap,
    this.description,
    this.icon,
  });
}
