import 'package:tripetch/models/hospital_response/hospital_response_model.dart';

class DetailScreenArguments {
  final int id;
  final String name;
  final List<WaitingListModel> waitingList;
  final LocationModel location;

  DetailScreenArguments(this.id, this.name, this.waitingList, this.location);
}
