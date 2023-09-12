import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => EstadoCadastroDeAdm(),
      child: const MyApp(),
    ),
  );
}

class Adm {
  final String? email;
  final String? senha;

  Adm({
    this.email,
    this.senha,
  });
}

class EstadoCadastroDeAdm with ChangeNotifier {
  final _cadastroDeAdm = <Adm>[];

  List<Adm> get adms => List.unmodifiable(_cadastroDeAdm);

  void incluir(Adm adm) {
    _cadastroDeAdm.add(adm);
    notifyListeners();
  }

  void excluir(Adm adm) {
    _cadastroDeAdm.remove(adm);
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const _MyAppState(),
        '/loginAdm': (context) => const _LoginAdm(),
        '/loginConcessionaria': (context) => const _LoginConcessionaria(),
        '/cadastrarAdm': (context) => const _CadastrarAdm(),
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
                    Navigator.pushNamed(context, '/loginAdm');
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
                  child: const Text("Login como administrador"),
                ),
              ),
              MouseRegion(
                onEnter: (_) {
                  setState(() {});
                },
                onExit: (_) {
                  setState(() {});
                },
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/cadastrarAdm');
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
                  child: const Text("Criar conta administrador"),
                ),
              ),
              MouseRegion(
                onEnter: (_) {
                  setState(() {});
                },
                onExit: (_) {
                  setState(() {});
                },
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/loginConcessionaria');
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
                  child: const Text("Login como concessionária"),
                ),
              ),
            ],
          ),
        ],
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Bem-vindo ao ConcesCar",
              style: TextStyle(
                  color: Color.fromARGB(255, 10, 61, 102), fontSize: 40.0),
            ),
            Text(
              "O jeito mais fácil de gerenciar concessionárias de carros.",
              style: TextStyle(
                  color: Color.fromARGB(255, 10, 61, 102), fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoginAdm extends StatefulWidget {
  const _LoginAdm({Key? key}) : super(key: key);

  @override
  _LoginAdmState createState() => _LoginAdmState();
}

class _LoginAdmState extends State<_LoginAdm> {
  final _formKey = GlobalKey<FormState>();
  String? email;
  String? senha;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login como administrador')),
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
                  labelText: 'Senha',
                ),
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginConcessionaria extends StatefulWidget {
  const _LoginConcessionaria({Key? key}) : super(key: key);

  @override
  _LoginConcessionariaState createState() => _LoginConcessionariaState();
}

class _LoginConcessionariaState extends State<_LoginConcessionaria> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  String? senha;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Login como concessionária')),
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
                  labelText: 'Senha',
                ),
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CadastrarAdm extends StatefulWidget {
  const _CadastrarAdm({Key? key}) : super(key: key);

  @override
  _CadastrarAdmState createState() => _CadastrarAdmState();
}

class _CadastrarAdmState extends State<_CadastrarAdm> {
  final _formKey = GlobalKey<FormState>();
  String? nome;
  String? email;
  String? telefone;
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
                  labelText: 'Nome completo',
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
                  labelText: 'Senha',
                ),
                onChanged: (value) {
                  setState(() {
                    senha = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  final adm = Adm(
                    email: email,
                    senha: senha,
                  );
                  Provider.of<EstadoCadastroDeAdm>(context, listen: false)
                      .incluir(adm);
                  Navigator.pop(context);
                },
                child: const Text("Criar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
