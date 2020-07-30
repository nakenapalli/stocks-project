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
        title: Text(exchange.name),
      ),
      body: Image(
        image: NetworkImage(exchange.image),
      ),
    );
  }
}
