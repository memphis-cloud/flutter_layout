import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  List<MenuRowData> MenuRow = [
    MenuRowData(Icons.favorite, "Избранное"),
    MenuRowData(Icons.phone, "Звонки"),
    MenuRowData(Icons.computer, "Устройства"),
    MenuRowData(Icons.folder, "Папка с чатами"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Настройки")),
      ),
      body: Container(
        width: double.infinity,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            UserInfo(),
            SizedBox(
              height: 30,
            ),
            _MenuWidget(MenuRow: MenuRow),
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          UserImage(),
          SizedBox(
            height: 15,
          ),
          UserName(),
          SizedBox(
            height: 10,
          ),
          UserPhone(),
          SizedBox(
            height: 10,
          ),
          UserLogin(),
        ],
      ),
    );
  }
}

class UserName extends StatelessWidget {
  const UserName({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("Igor <memphis> Rochev");
  }
}

class UserImage extends StatelessWidget {
  const UserImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(),
    );
  }
}

class UserPhone extends StatelessWidget {
  const UserPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("+7(950) 566 31 71");
  }
}

class UserLogin extends StatelessWidget {
  const UserLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Text("@memphis");
  }
}

class _MenuWidget extends StatelessWidget {
  final List<MenuRowData> MenuRow;

  const _MenuWidget({super.key, required this.MenuRow});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Column(
        children: MenuRow.map((data) => _MenuWidgetRow(data: data)).toList(),
      ),
    );
  }
}

class _MenuWidgetRow extends StatelessWidget {
  final MenuRowData data;

  const _MenuWidgetRow({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(data.icon),
          SizedBox(
            width: 15,
          ),
          Expanded(child: Text(data.text)),
          Icon(Icons.arrow_right_outlined)
        ],
      ),
    );
  }
}

class MenuRowData {
  final IconData icon;
  final String text;

  MenuRowData(this.icon, this.text);
}
