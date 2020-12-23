import 'package:congle/Auxiliary/app_bar.dart';
import 'package:congle/Auxiliary/colors.dart';
import 'package:congle/Auxiliary/custom_size.dart';

import 'package:congle/Dates/pending_dates.dart';
import 'package:congle/Dates/upcoming_dates.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'requested_dates.dart';

class Dates extends StatefulWidget {
  @override
  _DatesState createState() => _DatesState();
}

class _DatesState extends State<Dates> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    double height = displayHeight(context);

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * .25),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyAppBar(),
            getTabBar()
          ],
        ),
      ),
      body: getBody(),
    );
  }

  getTabBar() {
    return Column(
      children: [
        
        Container(
          color: Colors.transparent,
          child: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: pinkColor,
            tabs: [
              new Tab(
                child: Text(
                  'Requested',
                ),
              ),
              new Tab(
                child: Text('Pending'),
              ),
              new Tab(
                child: Text('Upcoming'),
              ),
            ],
            controller: tabController,
            indicatorColor: pinkColor,
            indicatorSize: TabBarIndicatorSize.label,
          ),
        ),
        Divider(),
        
      ],
    );
  }

  getBody() {
    return TabBarView(
      controller: tabController,
      children: [
        new RequestedDates(),

        new PendingDates(),

        new UpcomingDates(),
        
        
      ],
    );
  }
}