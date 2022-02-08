import 'package:flutter/material.dart';
import 'package:tripetch/models/arguments/detail_arguments.dart';
import 'package:tripetch/widgets/waiting_card_widget.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)!.settings.arguments as DetailScreenArguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(args.name),
            Text('latitude: ${args.location.lat}'),
            Text('longitude: ${args.location.lng}'),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: args.waitingList.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final item = args.waitingList[index];

                  return WaitingCardWWidget(
                    count: item.patientCount.toString(),
                    level: item.levelOfPain.toString(),
                    time: item.averageProcessTime.toString(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
