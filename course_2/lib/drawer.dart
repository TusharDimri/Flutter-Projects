import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          // DrawerHeader(
          //   child: Text(
          //     "Hello Flutter",
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   decoration: BoxDecoration(color: Colors.purple),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text("Tushar Dimri"),
            accountEmail: Text("tushar.dimri91@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2000&q=80"),
            ),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Tushar Dimri"),
            subtitle: Text("App Creator"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("tushar.dimri91@gmail.com"),
            subtitle: Text("Creator's Email"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
