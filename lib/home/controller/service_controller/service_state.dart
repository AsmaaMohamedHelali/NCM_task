abstract class ServicesState {
  const ServicesState();
}

class ServicesInitial extends ServicesState {
  const ServicesInitial() : super();
}

class ServicesStationChanged extends ServicesState {
  final int index;
  const ServicesStationChanged(this.index) : super();
}

class ServicesTitleDeedChanged extends ServicesState {
  final int index;
  const ServicesTitleDeedChanged(this.index) : super();
}
