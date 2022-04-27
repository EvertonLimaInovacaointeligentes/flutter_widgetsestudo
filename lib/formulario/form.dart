import 'package:flutter/material.dart';
import 'package:flutter_popup_menu_button/scroos/singleChildscrollview.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final formKey = GlobalKey<FormState>();
  final nomeEC = TextEditingController();
  final senhaEC = TextEditingController();
  String categoria_='1';
  @override
  void dispose() {
    // TODO: implement dispose
    nomeEC.dispose();
    senhaEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String texto = '';
    return Scaffold(
      appBar: AppBar(
        title: Text('Fomulario'),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(children: [
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  controller: nomeEC,
                  decoration: InputDecoration(
                    labelText: 'Login',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),
                    isDense: true,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  maxLines: null,
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo nome nao preenchido';
                    }
                  },
                  onChanged: (String value) {
                    setState(
                      () {
                        texto = value;
                      },
                    );
                  }),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                  controller: senhaEC,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.deepOrange),
                    ),
                    isDense: true,
                  ),
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  //maxLines: null,
                  keyboardType: TextInputType.number,
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo nome nao preenchido';
                    }
                  },
                  onChanged: (String value) {
                    setState(
                      () {
                        texto = value;
                      },
                    );
                  }),
              Text('Texto digitado ${nomeEC.text}'),
              DropdownButtonFormField<String>(
                decoration: InputDecoration(
                  labelText: 'Categoria',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                items: [
                  DropdownMenuItem(
                    value: '1',
                    child: Text('Categoria 1'),
                  ),
                  DropdownMenuItem(
                    value: '2',
                    child: Text('Categoria 2'),
                  ),
                  DropdownMenuItem(
                    value: '3',
                    child: Text('Categoria 3'),
                  ),
                  DropdownMenuItem(
                    value: '4',
                    child: Text('Categoria 4'),
                  ),
                  DropdownMenuItem(
                    value: '5',
                    child: Text('Categoria 5'),
                  ),
                ],
                validator: (String? value) {
                  if(value == null || value.isEmpty){
                    return 'Categoria não preenchida!';
                  }
                },
                value:categoria_,
                elevation: 16,
                icon: Icon(Icons.arrow_back_ios),
                onChanged: (String? newValue) {
                  setState(() {
                    categoria_=newValue ?? '';
                  });
                  print('categoria selecionada: $categoria_');
                },
              ),
              ElevatedButton(
                  onPressed: () {
                    var formValid = formKey.currentState?.validate() ?? false;
                    var message = 'Formulario invalido';
                    if (formValid) {
                      message = 'Formulario valido';
                    }
                    ScaffoldMessenger.of(context)
                        .showSnackBar(SnackBar(content: Text(message)));
                  },
                  child: Text('Salvar')),
            ]),
          ),
        ),
      ),
    );
  }
}
