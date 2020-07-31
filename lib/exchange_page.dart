import 'package:flutter/material.dart';
import 'exchange_model.dart';

class ExchangePage extends StatefulWidget {
  ExchangePage({Key key, this.selected}) : super(key: key);

  final Exchange selected;

  @override
  _ExchangePageState createState() => _ExchangePageState(selected);
}

class _ExchangePageState extends State<ExchangePage> {
  _ExchangePageState(this.exchange);

  Exchange exchange;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Text(exchange.name),
            SizedBox(width: 8.0),
            Image.network(exchange.image),
          ],
        ),
        titleSpacing: 75.0,
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Text("Established: "),
                Text(
                  (exchange.year).toString(),
                  textScaleFactor: 1.3,
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text("Located in: "),
                Text(
                  exchange.country,
                  textScaleFactor: 1.3,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
