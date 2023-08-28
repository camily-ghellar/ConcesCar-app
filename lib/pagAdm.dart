import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';

void main() {
  runApp(
    //ChangeNotifierProvider(
    //create: (context) => EstadoListaDePessoas(),
    /*child:*/ const MyApp(),
  );
  //);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const _MyAppState(),
        '/cadastrarConcessionaria': (context) =>
            const _CadastrarConcessionaria(),
      },
    );
  }
}

class _MyAppState extends StatefulWidget {
  const _MyAppState({Key? key}) : super(key: key);

  @override
  State<_MyAppState> createState() => _MyAppStateState();
}

class _MyAppStateState extends State<_MyAppState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ConcesCar'),
        actions: [
          Row(
            children: [
              MouseRegion(
                onEnter: (_) {
                  setState(() {});
                },
                onExit: (_) {
                  setState(() {});
                },
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastrarConcessionaria');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (states) {
                        return states.contains(MaterialState.hovered)
                            ? const Color.fromARGB(255, 10, 61, 102)
                            : Colors.blue;
                      },
                    ),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(fontSize: 9.0),
                    ),
                  ),
                  child: const Text("Cadastrar nova concecionária"),
                ),
              ),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
            ),
            Text(
              "Página do administrador",
              style: TextStyle(
                color: Color.fromARGB(255, 10, 61, 102),
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text(
              "Dados das concessionárias cadastradas:",
              style: TextStyle(
                  color: Color.fromARGB(255, 10, 61, 102), fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}

class _CadastrarConcessionaria extends StatefulWidget {
  const _CadastrarConcessionaria({Key? key}) : super(key: key);

  @override
  _CadastrarConcessionariaState createState() =>
      _CadastrarConcessionariaState();
}

class _CadastrarConcessionariaState extends State<_CadastrarConcessionaria> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  String? email;
  String? telefone;
  String? endereco;
  String? senha;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Criar conta administrador')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(100.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome da concessionária',
                ),
                onChanged: (value) {
                  setState(() {
                    nome = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
                onChanged: (value) {
                  setState(() {
                    email = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Telefone',
                ),
                onChanged: (value) {
                  setState(() {
                    telefone = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Endereço',
                ),
                onChanged: (value) {
                  setState(() {
                    endereco = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Senha de login',
                ),
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                },
              ),
              const Padding(
                padding: EdgeInsets.all(15.0),
              ),
              ElevatedButton(
                onPressed: () {
                  //final adm = Adm(
                  /*nome:
                  nome;
                  email:
                  email;
                  telefone:
                  telefone;
                  endereco:
                  endereco;
                  senha:
                  senha;*/

                  //);
                  //Provider.of<EstadoListaDePessoas>(context, listen: false)
                  //.incluir(pessoa);
                  Navigator.pop(context);
                },
                child: const Text("Cadastrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
