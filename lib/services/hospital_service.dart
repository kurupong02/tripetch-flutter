import 'dart:convert';

import 'package:tripetch/models/hospital_response/hospital_response_model.dart';
import 'package:http/http.dart' as http;

class HospitalService {
  Future<HospitalResponseModel> fetchHospitals() async {
    final response = await http
        .get(Uri.parse('https://tripetch-zombie.herokuapp.com/hospitals'));

    if (response.statusCode == 200) {
      return HospitalResponseModel.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load hospitals');
    }
  }
}
