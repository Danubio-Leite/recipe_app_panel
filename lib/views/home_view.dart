import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> ingredients = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[700],
        title: const Text(
          'Painel de Gestão de Receitas',
          style: TextStyle(color: Colors.white),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red[700],
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return Dialog(
                child: SizedBox(
                  height: 400,
                  child: Expanded(
                    child: AlertDialog(
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Nome da Receita',
                              ),
                            ),
                            // SizedBox(
                            //   height: 200,
                            //   width: double.infinity,
                            //   child: ListView.builder(
                            //     shrinkWrap: true,
                            //     itemCount: ingredients.length,
                            //     itemBuilder: (context, index) {
                            //       return Row(
                            //         children: [
                            //           Expanded(
                            //             child: TextField(
                            //               decoration: InputDecoration(
                            //                 labelText:
                            //                     'Ingrediente ${index + 1}',
                            //               ),
                            //               controller: TextEditingController(
                            //                   text: ingredients[index]),
                            //               onChanged: (value) {
                            //                 setState(() {
                            //                   ingredients[index] = value;
                            //                 });
                            //               },
                            //             ),
                            //           ),
                            //           const SizedBox(width: 10),
                            //           const Expanded(
                            //             child: TextField(
                            //               decoration: InputDecoration(
                            //                 labelText: 'Quantidade',
                            //               ),
                            //             ),
                            //           ),
                            //         ],
                            //       );
                            //     },
                            //   ),
                            // ),
                            TextField(
                              decoration: const InputDecoration(
                                labelText: 'Adicionar Ingrediente',
                              ),
                              onSubmitted: (value) {
                                setState(() {
                                  ingredients.add(value);
                                });
                              },
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Tempo de Preparo',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Dificuldade',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Calorias',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Vídeo',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Vídeo Passo a Passo',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Tags',
                              ),
                            ),
                            const SizedBox(height: 10),
                            const TextField(
                              decoration: InputDecoration(
                                labelText: 'Modo de Preparo',
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {
                                //save recipe
                                Navigator.pop(context);
                              },
                              child: const Text('Salvar'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 200.0, vertical: 20.0),
          child: ListView(
            children: const <Widget>[
              ListTile(
                title: Text('Receita 1'),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      Icon(Icons.edit),
                      SizedBox(width: 10),
                      Icon(Icons.delete),
                    ],
                  ),
                ),
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              ListTile(
                title: Text('Receita 2'),
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
              ListTile(
                title: Text('Receita 3'),
              ),
              Divider(
                height: 10,
                thickness: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
