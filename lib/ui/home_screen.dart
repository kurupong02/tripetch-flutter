import 'dart:async';

import 'package:flutter/material.dart';
import 'package:tripetch/constants/routes.dart';
import 'package:tripetch/models/arguments/detail_arguments.dart';
import 'package:tripetch/models/hospital_response/hospital_response_model.dart';
import 'package:tripetch/services/hospital_service.dart';
import 'package:tripetch/widgets/hospital_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<HospitalResponseModel> futureHospital;

  @override
  void initState() {
    super.initState();
    futureHospital = HospitalService().fetchHospitals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Hospitals'),
      ),
      body: Center(
        child: FutureBuilder<HospitalResponseModel>(
          future: futureHospital,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.hospitals.length,
                itemBuilder: (context, index) {
                  return HospitalCardWWidget(
                      label: snapshot.data!.hospitals[index].name,
                      onPressed: () {
                        Navigator.pushNamed(context, Routes.detail,
                            arguments: DetailScreenArguments(
                                snapshot.data!.hospitals[index].id,
                                snapshot.data!.hospitals[index].name,
                                snapshot.data!.hospitals[index].waitingList,
                                snapshot.data!.hospitals[index].location));
                      });
                },
              );
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
