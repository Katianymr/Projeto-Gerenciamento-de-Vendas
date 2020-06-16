import 'package:flutter/material.dart';

class Estoque extends StatefulWidget {
  @override
  _EstoqueState createState() => _EstoqueState();
}

class _EstoqueState extends State<Estoque> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(null),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: () {
            Navigator.pushNamed(
              context, "/BotaoCadastroProduto"
              );
          },)
        ],
      ),
    body: ListView1(),  
    );
  }
}

class ListView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: ListView(
        scrollDirection: Axis.vertical,
        reverse: false,
        children: <Widget>[
          Container(
            //color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      hintText: 'Search', border: OutlineInputBorder(
                        borderRadius: 
                          BorderRadius.all(
                            Radius.circular(20.0)
                          )
                      )
                    ),
                  ),
                ),
            ),
          ),
          
          SizedBox(
            height: 20,
          ),

          Text(
            "Produtos",
            style: TextStyle(fontSize: 30),
          ),
          
          SizedBox(
            height: 20,
          ),
          
          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Hidratante Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Algodão 400 ml"),
            //trailing: Icon(Icons.edit),
          ),

          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Hidratante Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Macadâmia 400 ml"),
            //trailing: Icon(Icons.edit),
          ),

          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Hidratante Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Algodão 200 ml"),
            //trailing: Icon(Icons.edit),
          ),

          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Hidratante Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Macadâmia 200 ml"),
            //trailing: Icon(Icons.edit),
          ),

          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Sabonete Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Caixa de sabonetes Algodão 5 un. 90g"),
            //trailing: Icon(Icons.edit),
          ),

          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Sabonete Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Caixa de sabonetes Cereja e Avelã 5 un. 90g"),
            //trailing: Icon(Icons.edit),
          ),

          ListTile(
            //leading: Icon(Icons.shopping_basket),
            title: Text("Sabonete Tododia", style: TextStyle(fontSize: 22)),
            subtitle: Text("Caixa de sabonetes Amora Vermelha e jabuticaba 5 un. 90g"),
            //trailing: Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}

 /*var userDetails = {};
  var i;
  List returnTicketDetails = [] ;

  body: new Column(
        children: <Widget>[
          new Container(
            color: Theme.of(context).primaryColor,
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Card(
                child: new ListTile(
                  leading: new Icon(Icons.search),
                  title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search', border: InputBorder.none),
                   // onChanged: onSearchTextChanged,
                  ),
                  trailing: new IconButton(icon: new Icon(Icons.cancel), onPressed: () {
                    controller.clear();
                   // onSearchTextChanged('');
                  },),
                ),
          new Expanded(
            child: userDetails.length != 0 || controller.text.isNotEmpty
                ? new ListView.builder(
               itemCount: userDetails.length,
              itemBuilder: (context, i) {
                return new Card(

                  child: new Column
                    (mainAxisSize: MainAxisSize.min, children:
                    <Widget>[
                    new Row(children: <Widget>[
                    new Container(
                    width: 80.0,
                    height: 80.0,
                    decoration: new BoxDecoration(
                    shape: BoxShape.circle,
                    image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                    "https:..")
                )
                )),
                    new Text(userDetails[returnTicketDetails[i]["user_id"]]["first_name"]
                    ),),
                  ,),
                    new Text(userDetails[returnTicketDetails[i]["user_id"]]["last_name"]),
                );
                },
            )
                : new ListView.builder(
               itemCount: userDetails.length,
              itemBuilder: (context, i) {
                return new Card(
                  child: new ListTile(
                    //title: new Text(userDetails[returnTicketDetails[i]["user_id"]]["first_name"]),
                  ),
                  margin: const EdgeInsets.all(0.0),
                );
    );
      }
 _getTicketDetails() async {
     final response = await http.get(
         "https..", headers: {
       HttpHeaders.AUTHORIZATION: access_token
     });
      returnTicketDetails = json.decode(response.body);
     for ( i = 0; i < (returnTicketDetails?.length ?? 0); i++) {
       final ticketresponse = await http.get(
           "https...", headers: {
         HttpHeaders.AUTHORIZATION:
         access_token
       });
       userDetails[returnTicketDetails[i]["user_id"]] =
           json.decode(ticketresponse.body);
   }
   }*/