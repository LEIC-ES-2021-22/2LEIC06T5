/*import 'package:flutter/material.dart';
import 'package:unimeals/constants/colors.dart';
import 'package:unimeals/view/widgets/navbarDrawer.dart';
import 'package:http/http.dart' as http;
import 'package:html/dom.dart' as dom;
import 'package:html/parser.dart' as parser;



class MenuPagehtml extends StatelessWidget {

  List<String> restaurantsName = <String>[];
  List<String> tipos = <String>[];
  List<String> titles = <String>[];


  /*@override
  void initState(){
    super.initState();
    getDataFromWeb();
  }*/

  Future <void> getDataFromWeb() async{
    final response = await http.get('https://sigarra.up.pt/feup/pt/cantina.ementashow');
    dom.Document html = parser.parse(response.body);
    //final mainSection =  document.getElementById("seccao");

  titles = html.querySelectorAll('#conteudoinner > h2')
    .map((element)=> element.innerHtml.trim())
    .toList();

  }

  @override
  Widget build(BuildContext context) {
    var tamanho;
    if (titles.length == 0){
      tamanho = 0;
    }else{
      tamanho = titles.length;
    }
    return Scaffold(
        drawer: navbarDrawer(),
        appBar: AppBar(
          title: Text('UniMeals'),
          backgroundColor: mainRed,
          centerTitle: true,
          shape: ContinuousRectangleBorder(borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60))),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(12),
          itemCount: tamanho,
          separatorBuilder: (context, index){
            return const SizedBox(height: 12);
          },
          itemBuilder: (context, index){
            final title = titles[index];
            return Text(title);
          },
        )
    );
  }
}*/

