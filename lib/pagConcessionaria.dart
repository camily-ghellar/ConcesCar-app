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
        '/cadastrarVeiculo': (context) => const _CadastrarVeiculo(),
        '/realizarVenda': (context) => const _RealizarVenda(),
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
                    Navigator.pushNamed(context, '/cadastrarVeiculo');
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
                  child: const Text("Cadastrar veículo"),
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
                    Navigator.pushNamed(context, '/realizarVenda');
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
                  child: const Text("Realizar venda"),
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
              "Página da concessionária",
              style: TextStyle(
                color: Color.fromARGB(255, 10, 61, 102),
                fontSize: 20.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
            ),
            Text(
              "Inventário de carros da concessionária:",
              style: TextStyle(
                  color: Color.fromARGB(255, 10, 61, 102), fontSize: 15.0),
            ),
          ],
        ),
      ),
    );
  }
}

class _CadastrarVeiculo extends StatefulWidget {
  const _CadastrarVeiculo({Key? key}) : super(key: key);

  @override
  _CadastrarVeiculoState createState() => _CadastrarVeiculoState();
}

class _CadastrarVeiculoState extends State<_CadastrarVeiculo> {
  final _formKey = GlobalKey<FormState>();
  String? modelo;
  String? marca;
  String? ano_fab;
  String? placa;
  String? ano_veiculo;
  String? preco_pago;
  String? data_compra;
  String? imagem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar veículo no inventário'),
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
                  labelText: 'Modelo',
                ),
                onChanged: (value) {
                  setState(() {
                    modelo = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Marca',
                ),
                onChanged: (value) {
                  setState(() {
                    marca = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ano de fabricação',
                ),
                onChanged: (value) {
                  setState(() {
                    ano_fab = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Placa',
                ),
                onChanged: (value) {
                  setState(() {
                    placa = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Ano do veículo',
                ),
                onChanged: (value) {
                  setState(() {
                    ano_veiculo = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Preço pago pela concessionária',
                ),
                onChanged: (value) {
                  setState(() {
                    preco_pago = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Data da compra',
                ),
                onChanged: (value) {
                  setState(() {
                    data_compra = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Anexar imagem do veículo',
                ),
                onChanged: (value) {
                  setState(() {
                    imagem = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  //final carro = Carro(
                  /*modelo:
                  modelo;
                  marca:
                  marca;
                  ano_fab:
                  ano_fab;
                  placa:
                  placa;
                  ano_veiculo:
                  ano_veiculo;
                  preco_pago:
                  preco_pago;
                  data_compra:
                  data_compra;
                  imagem:
                  imagem;*/
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

class _RealizarVenda extends StatefulWidget {
  const _RealizarVenda({Key? key}) : super(key: key);

  @override
  _RealizarVendaState createState() => _RealizarVendaState();
}

class _RealizarVendaState extends State<_RealizarVenda> {
  final _formKey = GlobalKey<FormState>();
  String? doc_comprador;
  String? nome_comprador;
  String? data_venda;
  String? preco_vendido;
  String? valor_conces;
  String? valor_rede;
  String? valor_seg;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Realizar venda')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Documento do comprador',
                ),
                onChanged: (value) {
                  setState(() {
                    doc_comprador = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Nome do comprador',
                ),
                onChanged: (value) {
                  setState(() {
                    nome_comprador = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Data da venda',
                ),
                onChanged: (value) {
                  setState(() {
                    data_venda = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Preço pago pelo comprador',
                ),
                onChanged: (value) {
                  setState(() {
                    preco_vendido = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Valor e percentual para a concessionária',
                ),
                onChanged: (value) {
                  setState(() {
                    valor_conces = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Valor e percentual para a rede',
                ),
                onChanged: (value) {
                  setState(() {
                    valor_rede = value;
                  });
                },
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Valor e percentual de segurança',
                ),
                onChanged: (value) {
                  setState(() {
                    valor_seg = value;
                  });
                },
              ),
              ElevatedButton(
                onPressed: () {
                  //final adm = Adm(
                  /*doc_comprador:
                  doc_comprador;
                  nome_comprador:
                  nome_comprador;
                  data_venda:
                  data_venda;
                  preco_vendido:
                  preco_vendido;
                  valor_conces:
                  valor_conces;
                  valor_rede:
                  valor_rede;
                  valor_seg:
                  valor_seg;*/
                  //);
                  //Provider.of<EstadoListaDePessoas>(context, listen: false)
                  //.incluir(pessoa);
                  Navigator.pop(context);
                },
                child: const Text("Vender"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
