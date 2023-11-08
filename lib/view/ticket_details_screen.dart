import 'package:flutter/material.dart';
import 'package:ortez/constants/constant.dart';
import 'package:ortez/widget/detail_row_widget.dart';
import 'package:ortez/widget/show_more_text.dart';
import 'package:ortez/widget/ticket_card_widget.dart';

class TicketDetailsScreenWidget extends StatelessWidget {
  const TicketDetailsScreenWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
               const TicketCardWidget(readMoreWidget: ReadMoreTextWidget(),ticketcreatedIcon:Icons.swap_horiz , ),
                const SizedBox(
                  height: 10,
                ),
                Card(
                  color: const Color.fromARGB(255, 237, 239, 242),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Contact Person Name',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500),
                            ),
                            Text(
                              '9984232145',
                              style: TextStyle(color: Colors.black54),
                            ),
                            Text(
                              'cp@gmail.com',
                              style: TextStyle(color: Colors.black54),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {},
                          child: const CircleAvatar(
                            backgroundColor: Colors.blue,
                            child: Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.phone,
                    color: Colors.black54,
                  ),
                  label: const Text(
                    'Alternative contacts',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                DetailRowWidget(
                  icon: Icons.contact_mail_outlined,
                  hintText: 'Address',
                  detailText:
                      ' Lorem ipsom dolar sit amt consectturc\n Lorem ipsom dolar sit amt consecttu',
                ),
                DetailRowWidget(
                  icon: Icons.web_asset_outlined,
                  hintText: 'Asset',
                  detailText: ' hshh(Description)',
                ),
                DetailRowWidget(
                  icon: Icons.airplane_ticket_outlined,
                  hintText: 'Ticket source',
                  detailText: ' Email',
                ),
                DetailRowWidget(
                  icon: Icons.toc,
                  hintText: 'Group',
                  detailText: ' Name',
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(60, 216, 192, 192),
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Flexible(child: Text('File')),
                  Flexible(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: MediaQuery.of(context).size.height * 0.03,
                          width: MediaQuery.of(context).size.width * 0.2,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    AppConstants.fileImages[index],
                                  ),
                                  fit: BoxFit.fill)),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width * 0.03,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
