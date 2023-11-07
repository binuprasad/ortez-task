import 'package:flutter/material.dart';
import 'package:ortez/view/home_screen.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TicketCardWidget(),
              Stepper(
                
                  physics: const ClampingScrollPhysics(),
                  controlsBuilder: (context, controller) => const Row(children: []),
                  steps: [
                    Step(
                        title: const Text('10/06/2023 01:15 PM'),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Call Report by Appu',
                              style: TextStyle(color: Colors.green),
                            ),
                            StepperContainerWidget(
                              contentTitle: 'Summary',
                              content:
                                  'Summary Lorem ipsum dolor sit amet consetetur volutpat sed',
                              buttonText: '...More',
                              ontap: () {},
                            )
                          ],
                        )),
                    Step(
                        title: const Text('10/06/2023 01:15 PM'),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Ticket Merged',
                              style: TextStyle(color: Colors.green),
                            ),
                            StepperContainerWidget(
                              content: 'Ticket 1862 Merged by biju',
                              buttonText: '...View Ticket Details',
                              ontap: () {},
                            )
                          ],
                        )),
                    const Step(
                      title: Text('10/06/2023 01:15 PM'),
                      content: Text(
                        'Assign to Appu',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                    const Step(
                      title: Text('10/06/2023 01:15 PM'),
                      content: Column(
                        children: [
                          Text(
                            'Assign to Appu',
                            style: TextStyle(color: Colors.green),
                          ),
                          Text(
                            'Ticket Created by Biju',
                            style: TextStyle(color: Colors.black54),
                          ),
                        ],
                      ),
                    )
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}

class StepperContainerWidget extends StatelessWidget {
  const StepperContainerWidget({
    super.key,
    this.contentTitle,
    required this.content,
    required this.buttonText,
    required this.ontap,
  });
  final String? contentTitle;
  final String content;
  final String buttonText;
  final void Function() ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              contentTitle ?? '',
              style: const TextStyle(color: Colors.black54),
            ),
            Text(
              content,
              style: const TextStyle(color: Colors.black38),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: ontap,
                    child: Text(
                      buttonText,
                      style: const TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w500),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
