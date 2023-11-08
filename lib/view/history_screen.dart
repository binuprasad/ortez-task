import 'package:flutter/material.dart';
import 'package:ortez/widget/stepper_container_widget.dart';

import '../widget/ticket_card_widget.dart';

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

