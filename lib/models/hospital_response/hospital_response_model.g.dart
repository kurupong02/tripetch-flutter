// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hospital_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HospitalResponseModel _$HospitalResponseModelFromJson(
        Map<String, dynamic> json) =>
    HospitalResponseModel(
      hospitals: (json['hospitals'] as List<dynamic>)
          .map((e) => HospitalModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$HospitalResponseModelToJson(
        HospitalResponseModel instance) =>
    <String, dynamic>{
      'hospitals': instance.hospitals,
    };

HospitalModel _$HospitalModelFromJson(Map<String, dynamic> json) =>
    HospitalModel(
      id: json['id'] as int,
      name: json['name'] as String,
      waitingList: (json['waitingList'] as List<dynamic>)
          .map((e) => WaitingListModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      location:
          LocationModel.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HospitalModelToJson(HospitalModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'waitingList': instance.waitingList,
      'location': instance.location,
    };

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) =>
    LocationModel(
      lng: (json['lng'] as num).toDouble(),
      lat: (json['lat'] as num).toDouble(),
    );

Map<String, dynamic> _$LocationModelToJson(LocationModel instance) =>
    <String, dynamic>{
      'lng': instance.lng,
      'lat': instance.lat,
    };

WaitingListModel _$WaitingListModelFromJson(Map<String, dynamic> json) =>
    WaitingListModel(
      patientCount: json['patientCount'] as int,
      levelOfPain: json['levelOfPain'] as int,
      averageProcessTime: json['averageProcessTime'] as int,
    );

Map<String, dynamic> _$WaitingListModelToJson(WaitingListModel instance) =>
    <String, dynamic>{
      'patientCount': instance.patientCount,
      'levelOfPain': instance.levelOfPain,
      'averageProcessTime': instance.averageProcessTime,
    };
