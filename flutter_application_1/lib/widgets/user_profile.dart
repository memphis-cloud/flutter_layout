import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Настройки")),
      ),
      body: UserInfo(),
    );
    // return const Text("text");
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
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
  @override
  Widget build(BuildContext context) {
    return Text("Igor <memphis> Rochev");
  }
}

class UserImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      child: Placeholder(
        fallbackHeight: 100,
        fallbackWidth: 100,
      ),
    );
  }
}

class UserPhone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("+7(950) 566 31 71");
  }
}

class UserLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("@memphis");
  }
}
