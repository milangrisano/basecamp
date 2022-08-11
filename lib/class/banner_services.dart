class Banner {
  final String bold;
  final String solid;
  final String image;
  final int servicesbanner;

  Banner(
    this.bold,
    this.solid,
    this.image,
    this.servicesbanner
  );
}
List<Banner> banner = [
  Banner(
    'FILM',
    'PRODUCTION',
    'assets/banner/filmproduction.png',
    1
  ),
  Banner(
    'LIVE',
    'PRODUCTION',
    'assets/banner/liveproduction.png',
    2
  ),
  Banner(
    'SOUND',
    'STUDIO',
    'assets/banner/soundstudio.png',
    3
  ),
];