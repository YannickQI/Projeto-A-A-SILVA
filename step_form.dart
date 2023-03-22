import 'package:flutter/material.dart';

import './page_indicator.dart';

import 'page_body.dart';

class Stepform extends StatelessWidget {
  final _stepFormController = PageController();

  int _page = 0;

  List _pagesList = [
    pageBody(
      'assets/logo.png',
      'BEM-VINDOS',
      '',
    ),
    pageBody(
      'assets/cadapio_resized.png',
      'CARDAPIO',
      '',
    ),
    pageBody(
      'assets/bandeiras.png',
      'FORMA DE PAGAMENTO',
      'aceitamos todos os tipos de pagamentos',
    ),
  ];

  void _changeStep(bool nextPage) {
    if (nextPage) {
      _stepFormController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      _stepFormController.previousPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("AÇAI SILVA"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: PageView.builder(
          controller: _stepFormController,
          itemBuilder: (BuildContext context, int index) {
            return _pagesList[index];
          }),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text(
              'Anterior',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () => _changeStep(false),
          ),
          pageIndicator(_page == 0),
          pageIndicator(_page == 1),
          pageIndicator(_page == 2),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.deepPurple,
            ),
            child: const Text(
              'Próximo',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () => _changeStep(true),
          ),
        ],
      ),
    );
  }
}