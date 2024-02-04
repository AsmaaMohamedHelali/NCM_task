enum HomeTabs {
  dashboard,
  services,
  settings,
  more,
}

HomeTabs getTabFromName(String name) {
  for (var element in HomeTabs.values) {
    if (element.name == name) return element;
  }
  return HomeTabs.values.first;
}
