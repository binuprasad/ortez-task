import 'package:flutter/material.dart';
import 'package:ortez/widget/custom_container_widget.dart';

class TicketCardWidget extends StatelessWidget {
  const TicketCardWidget({
    super.key,
    this.readMoreWidget,
    this.ticketcreatedIcon,
  });
  final Widget? readMoreWidget;
  final IconData? ticketcreatedIcon;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.blue,
                  child: Text(
                    'C',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.01,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ticket id',
                      style: TextStyle(
                          color: Color.fromARGB(255, 19, 55, 85),
                          fontSize: 16,
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      'Customer Name',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      'Ticket Summary',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Text(
                  '09/06/2023 10:12 AM',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            readMoreWidget ?? Container(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainerWidget(
                  text: 'Priority Level',
                  color: Colors.amber[100],
                  borderColor: Colors.amber,
                  textColor: Colors.black,
                ),
                CustomContainerWidget(
                  text: 'Reopened',
                  color: Colors.green[200],
                  borderColor: const Color.fromARGB(255, 201, 238, 202),
                  textColor: Colors.green,
                ),
                CustomContainerWidget(
                  text: '1Day 1 hr 10 min',
                  color: Colors.purple[100],
                  borderColor: Colors.purple,
                  textColor: Colors.black,
                )
              ],
            ),
            const Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Ticket created by manu',
                  style: TextStyle(color: Colors.black54),
                ),
                Icon(ticketcreatedIcon)
              ],
            )
          ],
        ),
      ),
    );
  }
}
