import 'package:flutter/material.dart';

import './page_indicator.dart';

import 'page_body.dart';

class Stepform extends StatelessWidget {
  final _stepFormController = PageController();

  int _page = 0;

  List _pagesList = [
    pageBody(
      'https://media.istockphoto.com/id/1352472391/pt/foto/tasty-acai-berries-in-bowl-on-light-blue-wooden-table-closeup.jpg?s=612x612&w=0&k=20&c=yCcg16ghzePPLVglgE09WgEuc6mge21F89nQHIwSwYw=',
      'AÇAÍ',
      'O açaí é uma palmeira muito comum na região da Amazônia que produz um fruto bacáceo de cor roxa, muito utilizado na confecção de alimentos e bebidas.',
    ),
    pageBody(
      'https://media.istockphoto.com/id/1423312170/pt/foto/black-olives-and-olive-tree-branches.jpg?s=612x612&w=0&k=20&c=wGr8I7CWk34pbmH-N_bFsn8mJk3GUcXAkYYECI3Gul8=',
      'CULTIVO DO AÇAÍ',
      'A palmeira do açaí pode atingir mais de 20 metros de altura, e o fruto é formado em cachos. Cada palmeira costuma ter cerca de quatro cachos por ano e cada um deles pode produzir uma quantidade aproximada de três a seis quilos do fruto.',
    ),
    pageBody(
      'https://media.istockphoto.com/id/540372400/pt/foto/manh%C3%A3-lanche-com-sementes-de-chia-pudim-de-chocolate-e-mirtilos.jpg?s=612x612&w=0&k=20&c=H9jWTTkg14uFGdVCHXgRyAul7XawWdWD66KK0uknNZs=',
      'COMO É O CONSUMO DE AÇAÍ NO BRASIL?',
      'Curiosamente, cada região do Brasil tem um costume diferente para consumir o açaí. No Norte e Nordeste, principalmente, ele ocupa um lugar de alimentação básica e é consumido com outros alimentos, como arroz, feijão, carnes, camarão, farinha de tapioca e outros. Já nas regiões Centro-Oeste, Sul e Sudeste, o açaí é mais considerado uma sobremesa.',
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
