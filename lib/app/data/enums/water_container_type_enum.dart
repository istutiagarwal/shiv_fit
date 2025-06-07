enum WaterContainerType {
  glass(
    'Glass',
    'assets/images/water_glass.png',
    '250',
    false,
    false,
  ),
  shaker(
    'Shaker',
    'assets/images/protein_shaker.png',
    '250',
    false,
    false,
  ),
  tumbler(
    'Tumbler',
    'assets/images/tumbler.png',
    '250',
    false,
    false,
  ),
  waterBottle(
    'Water Bottle',
    'assets/images/water_bottle.png',
    '250',
    false,
    false,
  ),
  hydroFlask(
    'Hydro Flask',
    'assets/images/hydro_flask.png',
    '250',
    false,
    false,
  );

  final String label;
  final String image;
  final String defaultVolume;
  final bool isUpdated;
  final bool isSelected;

  const WaterContainerType(this.label, this.image, this.defaultVolume,
      this.isUpdated, this.isSelected);
}
