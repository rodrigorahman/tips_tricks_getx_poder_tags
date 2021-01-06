import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tips_tricks_getx/application/rest_template.dart';
import 'package:tips_tricks_getx/models/pessoa_model.dart';

class HomePage extends StatelessWidget {

  final restTemplate = Get.find<RestTemplate>(tag: RestTemplate.AUTH_TAG);
  final pessoa = Get.find<PessoaModel>(tag: 'rahman');

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: Text(restTemplate.name),),
           body: Text(pessoa.nome, style: TextStyle(fontSize: 50),),
       );
  }
}