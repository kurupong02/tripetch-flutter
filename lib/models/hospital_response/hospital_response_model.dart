import 'package:json_annotation/json_annotation.dart';

part 'hospital_response_model.g.dart';

@JsonSerializable()
class HospitalResponseModel {
  final List<HospitalModel> hospitals;

  HospitalResponseModel({required this.hospitals});

  factory HospitalResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HospitalResponseModelFromJson(json);

  Map<String, dynamic> toJson() => _$HospitalResponseModelToJson(this);
}

@JsonSerializable()
class HospitalModel {
  final int id;
  final String name;
  final List<WaitingListModel> waitingList;
  final LocationModel location;

  HospitalModel(
      {required this.id,
      required this.name,
      required this.waitingList,
      required this.location});

  factory HospitalModel.fromJson(Map<String, dynamic> json) =>
      _$HospitalModelFromJson(json);

  Map<String, dynamic> toJson() => _$HospitalModelToJson(this);
}

@JsonSerializable()
class LocationModel {
  final double lng;
  final double lat;

  LocationModel({required this.lng, required this.lat});

  factory LocationModel.fromJson(Map<String, dynamic> json) =>
      _$LocationModelFromJson(json);

  Map<String, dynamic> toJson() => _$LocationModelToJson(this);
}

@JsonSerializable()
class WaitingListModel {
  final int patientCount;
  final int levelOfPain;
  final int averageProcessTime;

  WaitingListModel(
      {required this.patientCount,
      required this.levelOfPain,
      required this.averageProcessTime});

  factory WaitingListModel.fromJson(Map<String, dynamic> json) =>
      _$WaitingListModelFromJson(json);

  Map<String, dynamic> toJson() => _$WaitingListModelToJson(this);
}
