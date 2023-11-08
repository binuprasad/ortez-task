import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ortez/constants/constant.dart';
import 'package:ortez/controller/homecontroller.dart';
import 'package:ortez/view/history_screen.dart';
import 'package:ortez/view/ticket_details_screen.dart';
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


