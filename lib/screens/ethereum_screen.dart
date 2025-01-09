import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class EthereumScreen extends StatefulWidget {
  @override
  _EthereumScreenState createState() => _EthereumScreenState();
}

class _EthereumScreenState extends State<EthereumScreen> {
  Map<String, dynamic>? cryptoData;

  @override
  void initState() {
    super.initState();
    fetchCryptoData();
  }

  Future<void> fetchCryptoData() async {
    final response = await http.get(Uri.parse('https://api.coinlore.net/api/ticker/?id=80'));
    if (response.statusCode == 200) {
      setState(() {
        cryptoData = jsonDecode(response.body)[0];
      });
    } else {
      throw Exception('Failed to load crypto data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ethereum'),
      ),
      body: cryptoData == null
          ? Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView(
                children: [
                   _buildDetailItem('Name', cryptoData!['name']),
                  _buildDetailItem('Symbol', cryptoData!['symbol']),
                  _buildDetailItem('Rank', '${cryptoData!['rank']}'),
                  _buildDetailItem(
                      'Price (USD)', '\$${cryptoData!['price_usd']}'),
                  _buildDetailItem(
                      '24h Change', '${cryptoData!['percent_change_24h']}%'),
                  _buildDetailItem(
                      '1h Change', '${cryptoData!['percent_change_1h']}%'),
                  _buildDetailItem(
                      '7d Change', '${cryptoData!['percent_change_7d']}%'),
                  _buildDetailItem(
                      'Market Cap', '\$${cryptoData!['market_cap_usd']}'),
                  _buildDetailItem(
                      'Volume (24h)', '\$${cryptoData!['volume24']}'),
                  _buildDetailItem(
                      'Circulating Supply', '${cryptoData!['csupply']}'),
                  _buildDetailItem(
                      'Price (BTC)', '\$${cryptoData!['price_btc']}'),
                  _buildDetailItem(
                      'Total Supply', '\$${cryptoData!['tsupply']}'),
                  _buildDetailItem(
                      'Maximum Supply', '\$${cryptoData!['msupply']}'),
                ],
              ),
            ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
