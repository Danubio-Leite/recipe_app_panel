import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Nome da Receita',
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Ingredientes',
                      ),
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Modo de Preparo',
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        //save recipe
                        Navigator.pop(context);
                      },
                      child: const Text('Salvar'),
                    ),
                  ],
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
