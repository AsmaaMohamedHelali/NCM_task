import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ncm/home/controller/service_controller/service_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  ServicesCubit() : super(const ServicesInitial());
  final TextEditingController stationClassificationField =
      TextEditingController();
  final TextEditingController stationClassField = TextEditingController();
  final TextEditingController proposedStationLocationField =
      TextEditingController();
  final TextEditingController stationCoordinatesField = TextEditingController();
  final TextEditingController stationTypeField = TextEditingController();
  final TextEditingController stationAddressField = TextEditingController();
  final TextEditingController delegateNameField = TextEditingController();
  final TextEditingController delegateIdField = TextEditingController();
  final TextEditingController referenceNumField = TextEditingController();
  final TextEditingController signatureDigitalField = TextEditingController();
  final TextEditingController uploadDocumentField = TextEditingController();

  int _selectedStationType = 0;
  int _selectedTitleType = 0;

  int get selectedStationType => _selectedStationType;

  int get selectedTitleType => _selectedTitleType;

  set selectedStationType(int value) {
    _selectedStationType = value;
    emit(ServicesStationChanged(value));
  }

  set selectedTitleType(int value) {
    _selectedTitleType = value;
    emit(ServicesTitleDeedChanged(value));
  }
}
