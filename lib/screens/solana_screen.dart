import 'package:crypto_pulse/widgets/color.dart';
import 'package:crypto_pulse/widgets/detail_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SolanaScreen extends StatefulWidget {
  @override
  _SolanaScreenState createState() => _SolanaScreenState();
}

class _SolanaScreenState extends State<SolanaScreen> {
  Map<String, dynamic>? cryptoData;

  @override
  void initState() {
    super.initState();
    fetchCryptoData();
  }

  Future<void> fetchCryptoData() async {
    final response = await http
        .get(Uri.parse('https://api.coinlore.net/api/ticker/?id=48543'));
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
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/fundo_moedas.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50, left: 10),
                    child: Text(
                      'Solana',
                      style: TextStyle(
                        color: CyberYellow.cyberpunkYellow,
                        fontFamily: 'Rovelink',
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.blueAccent,
                            blurRadius: 10,
                            offset: Offset(6, 5),
                          ),
                        ],
                      ),
                    )
                        .animate(
                          onPlay: (controller) => controller.repeat(),
                        )
                        .shimmer(
                          duration: 2000.ms,
                          color: CyberYellow.cyberpunkYellow,
                        ),
                  ),
                  cryptoData == null
                      ? Center(
                          child: CircularProgressIndicator(
                            valueColor:
                                AlwaysStoppedAnimation(Colors.greenAccent),
                          ),
                        )
                      : Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              SizedBox(height: 70),
                              DetailItem(
                                  title: 'Name', value: cryptoData!['name']),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Symbol',
                                  value: cryptoData!['symbol']),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Rank',
                                  value: '${cryptoData!['rank']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Price (USD)',
                                  value: '\$${cryptoData!['price_usd']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: '24h Change',
                                  value:
                                      '${cryptoData!['percent_change_24h']}%'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: '1h Change',
                                  value:
                                      '${cryptoData!['percent_change_1h']}%'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: '7d Change',
                                  value:
                                      '${cryptoData!['percent_change_7d']}%'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Market Cap',
                                  value: '\$${cryptoData!['market_cap_usd']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Volume (24h)',
                                  value: '\$${cryptoData!['volume24']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Circulating Supply',
                                  value: '${cryptoData!['csupply']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Price (BTC)',
                                  value: '\$${cryptoData!['price_btc']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Total Supply',
                                  value: '\$${cryptoData!['tsupply']}'),
                              SizedBox(height: 100),
                              DetailItem(
                                  title: 'Maximum Supply',
                                  value: '\$${cryptoData!['msupply']}'),
                              SizedBox(height: 100),
                            ],
                          ),
                        ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
