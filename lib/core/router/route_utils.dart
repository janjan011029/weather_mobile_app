enum AppPage {
  //* Home pages
  home(
    path: '/',
    name: 'Weather Page',
  );

  final String path;
  final String name;

  const AppPage({required this.path, required this.name});
}
