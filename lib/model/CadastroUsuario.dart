class CadastroUsuario {
  String _id;
  String _nome;
  String _email;
  String _senha;
  String _repsenha;

  CadastroUsuario(this._nome, this._email, this._senha, this._repsenha);

  String get id => _id;
  String get nome => _nome;
  String get email => _email;
  String get senha => _senha;
  String get repsenha => _repsenha;

  CadastroUsuario.map(dynamic obj) {
    this._id = obj['id'];
    this._nome = obj['Nome'];
    this._email = obj['Email'];
    this._senha = obj['Senha'];
    this._repsenha = obj['ConfirmarSenha'];
  }

    Map<String, dynamic> toMap() {
      var map = Map<String, dynamic>();
      if (_id != null) {
        map['Nome'] = _nome;
        map['Email'] = _email;
        map['Senha'] = _senha;
        map['ConfirmarSenha'] = _repsenha;
        return map;
      }
    }

      CadastroUsuario.fromMap(Map<String, dynamic> map, String id){
        this._id = id ?? '';
        this._nome = map['Nome'];
        this._email = map['Email'];
        this._senha = map['Senha'];
        this._repsenha = map['ConfirmarSenha'];
      }
    }

