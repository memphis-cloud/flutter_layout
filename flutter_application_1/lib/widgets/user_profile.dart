import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  UserProfile({super.key});

  List<MenuRowData> MenuRow1 = [
    MenuRowData(Icons.favorite, "Избранное"),
    MenuRowData(Icons.phone, "Звонки"),
    MenuRowData(Icons.computer, "Устройства"),
    MenuRowData(Icons.folder, "Папка с чатами"),
  ];

  List<MenuRowData> MenuRow2 = [
    MenuRowData(Icons.notifications, "Уведомления и звуки"),
    MenuRowData(Icons.security, "Конфиденциальность"),
    MenuRowData(Icons.memory, "Данные и память"),
    MenuRowData(Icons.design_services_outlined, "Оформление"),
    MenuRowData(Icons.language, "Язык"),
    MenuRowData(Icons.sticky_note_2_outlined, "Стикеры"),
    MenuRowData(Icons.energy_savings_leaf, "Энергосбережение"),
    MenuRowData(Icons.help, "Помощь"),
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
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                UserInfo(),
                SizedBox(
                  height: 30,
                ),
                _MenuWidget(MenuRow: MenuRow1),
                SizedBox(
                  height: 30,
                ),
                _MenuWidget(MenuRow: MenuRow2),
              ],
            )
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
    return Stack(
      children: [
        Container(
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
        ),
        Positioned(
          top: 15,
          right: 8,
          child: Text('Изм.'),
        ),
      ],
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
