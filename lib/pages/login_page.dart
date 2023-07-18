import 'package:flutter/material.dart';
import 'package:unjuk_keterampilan_prakerja/pages/home_page.dart';
import 'package:unjuk_keterampilan_prakerja/pages/started.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController emailC = TextEditingController(text: 'gerry');
  final TextEditingController passC = TextEditingController(text: '12345');
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return const StartedPage();
            }));
          },
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const Text(
            "Login",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Text(
            "Silahkan Login untuk masuk kedalam aplikasi",
            textAlign: TextAlign.start,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: emailC,
            decoration: InputDecoration(
              labelText: "Email",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              suffixIcon: const Icon(
                Icons.email,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            controller: passC,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.remove_red_eye,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Lupa Password ?",
                  )),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          MaterialButton(
            minWidth: double.infinity,
            height: 50,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const HomePage();
              }));
            },
            color: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
            child: const Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
