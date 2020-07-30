import 'package:flutter/material.dart';
import 'exchange_model.dart';
import 'package:stocks_project/stocks_api.dart' as api;
import 'dart:convert';
import 'exchange_page.dart';

class ExchangeList extends StatefulWidget {
  ExchangeList({Key key}) : super(key: key);

  @override
  _ExchangeListState createState() => _ExchangeListState();
}

class _ExchangeListState extends State<ExchangeList> {
  List<Exchange> exchangeList;

  _getExchanges() async {
    await api.fetchExchangesList().then((response) => setState(() {
          var data = json.decode(response.body);
          Iterable list = data as List;
          exchangeList = list.map((model) => Exchange.fromJson(model)).toList();
        }));
  }

  @override
  void initState() {
    _getExchanges();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stock Exchanges"),
      ),
      body: ListView.builder(
        itemCount: exchangeList.length,
        itemBuilder: (context, index) => ListTile(
          leading: Image.network(exchangeList[index].image),
          title: Text(exchangeList[index].name),
          subtitle: Text(exchangeList[index].country),
          trailing: Text((exchangeList[index].year).toString()),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExchangePage(
                selected: exchangeList[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
