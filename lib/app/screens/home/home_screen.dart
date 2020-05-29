import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:lotery_flutter/app/screens/home/components/content_widget.dart';
import 'package:lotery_flutter/app/screens/home/components/header_widget.dart';
import 'package:lotery_flutter/app/screens/lotteries/stores/lotteries_store.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LotteriesStore store = LotteriesStore();

  @override
  void initState() { 
    super.initState();
    store.fetchLotteries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: FloatingActionButton(
              elevation: 0,
              highlightElevation: 0,
              onPressed: store.fetchLotteries,
              child: Icon(
                Icons.refresh,
                size: 30,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HeaderWidget(),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(top: 10, bottom: 5, right: 10),
                child: Text('ÚLTIMOS RESULTADOS'),
              ),
              Observer(
                builder: (_) {
                  return store.isAllLoaded
                      ? ContentWidget(store)
                      : Container(
                          margin: EdgeInsets.only(top: 100),
                          child: SpinKitFadingCircle(
                            size: 100,
                            color: Colors.green,
                          ),
                        );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
