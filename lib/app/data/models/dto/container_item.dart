
class ContainerItem {
  String image;
  String volume;
  bool isUpdated;
  bool isSelected;

  ContainerItem({
    required this.image,
    required this.volume,
    required this.isUpdated,
    this.isSelected = false,
  });

  @override
  String toString() {
    return 'ContainerItem(image: $image, volume: $volume, isUpdated: $isUpdated,isSelected: $isSelected)';
  }

  Map<String, dynamic> toJson() => {
    'image': image,
    'volume': volume,
    'isSelected': isSelected,
    'isUpdated': isUpdated,
  };

  factory ContainerItem.fromJson(Map<String, dynamic> json) => ContainerItem(
    image: json['image'],
    volume: json['volume'],
    isSelected: json['isSelected'] ?? false,
    isUpdated: json['isUpdated'] ?? false,
  );
}


