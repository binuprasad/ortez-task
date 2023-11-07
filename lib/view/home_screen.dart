import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortez/constants/constant.dart';
import 'package:ortez/controller/homecontroller.dart';
import 'package:ortez/view/history_screen.dart';
import 'package:readmore/readmore.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 100),
          child: Container(
            color: const Color.fromARGB(255, 19, 55, 85),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(
                      child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          indicatorColor: Colors.green,
                          dividerColor: Color.fromARGB(255, 19, 55, 85),
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.grey,
                          tabs: [
                            Tab(
                              text: 'Ticket Details',
                            ),
                            Tab(
                              text: 'History',
                            ),
                          ]),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.10,
                    ),
                    Flexible(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.30,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.delete,
                              size: 25,
                              color: Colors.red,
                            ),
                            Icon(
                              Icons.edit_note,
                              size: 25,
                              color: Colors.green,
                            ),
                            CircleAvatar(
                                radius: 19,
                                backgroundColor: Colors.green,
                                child: Icon(
                                  Icons.send,
                                  color: Colors.white,
                                  size: 25,
                                ))
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(children: [
             TicketDetailsScreenWidget(),
             HistoryScreen()
        ])
     
      ),
    );
  }
}

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

class TicketCardWidget extends StatelessWidget {
  const TicketCardWidget({
    super.key, this.readMoreWidget, this.ticketcreatedIcon,
  });
final Widget ?readMoreWidget;
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
                  width:
                      MediaQuery.of(context).size.width * 0.01,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ticket id',
                      style: TextStyle(
                          color:
                              Color.fromARGB(255, 19, 55, 85),
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
          //  const ReadMoreTextWidget(),
          readMoreWidget??Container(),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomContainerWidget(
                  text: 'Priority Level',
                  color: Colors.amber[100],
                  borderColor: Colors.amber, textColor: Colors.black,
                ),
                CustomContainerWidget(
                  text: 'Reopened',
                  color: Colors.green[200],
                  borderColor:const Color.fromARGB(255, 201, 238, 202), textColor: Colors.green,
                ),
                CustomContainerWidget(
                  text: '1Day 1 hr 10 min',
                  color: Colors.purple[100],
                  borderColor: Colors.purple, textColor: Colors.black,
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

class ReadMoreTextWidget extends StatelessWidget {
  const ReadMoreTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ReadMoreText(
      'AT ther is som the quality of its services and to  ther is som the quality of its services and to analyze traffic tomyu isosl iisjfkckhk thjdfje ;pren o[soim dp;pr sot amet cpmsectoire cp;it[ar]]]',
      style: TextStyle(color: Colors.black54),
      trimLines: 2,
      textAlign: TextAlign.justify,
      trimMode: TrimMode.Line,
      trimCollapsedText: '..More',
      trimExpandedText: ' ..less',
      lessStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold),
      moreStyle: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold),
    );
  }
}

class DetailRowWidget extends StatelessWidget {
  const DetailRowWidget({
    super.key,
    required this.icon,
    required this.hintText,
    required this.detailText,
  });
  final IconData icon;
  final String hintText;
  final String detailText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.03,
          ),
          Text('$hintText : ',
              style: const TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.w500)),
          Text(detailText,
              maxLines: 2, style: const TextStyle(color: Colors.black54))
        ],
      ),
    );
  }
}

class CustomContainerWidget extends StatelessWidget {
  const CustomContainerWidget({
    super.key,
    required this.text,
    required this.color,
    required this.borderColor,
    required this.textColor,
  });
  final String text;
  final Color? color;
  final Color borderColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.04,
      width: MediaQuery.of(context).size.width * 0.27,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: color,
          border: Border.all(color: borderColor.withOpacity(0.4))),
      child: Center(
          child: Text(
        text,
        style: TextStyle(color: textColor),
      )),
    );
  }
}
