import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'home/components/content_widget.dart';
import 'home/components/header_widget.dart';
import 'home/stores/lotteries_store.dart';

class HomeScreen extends StatelessWidget {
  final LotteriesStore store = LotteriesStore();
  @override
  Widget build(BuildContext context) {
    store.fetchLotteries();
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
                padding: EdgeInsets.only(bottom: 5, right: 15),
                child: Text('ÚLTIMOS RESULTADOS'),
              ),
              Observer(
                builder: (_) {
                  return store.isAllLoaded
                      ? ContentWidget(store)
                      : Container(child: SpinKitCircle(color: Colors.green));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
