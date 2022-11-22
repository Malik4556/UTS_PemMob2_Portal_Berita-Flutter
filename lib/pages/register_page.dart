import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:fluttertoast/fluttertoast.dart';
import 'package:portal_berita_uts_sem4/pages/login_page.dart';


class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final _messangerKey = GlobalKey<ScaffoldMessengerState>();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MyRegister(),
    );
  }
}

/////

class MyRegister extends StatefulWidget {
  const MyRegister({super.key});

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final snackBar = SnackBar(
    content: const Text(''),
    action: SnackBarAction(
      label: '',
      onPressed: () {},
    ),
  );

  bool visibilityPass = false;

  TextEditingController cUser = TextEditingController();
  TextEditingController cPass = TextEditingController();
  TextEditingController cEmail = TextEditingController();

  showToast() {
    setState(() {
      Fluttertoast.showToast(
          msg: 'Kamu lupa passwordnya apa?',
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
//Text 'Welcome,'
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Welcome,',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 40,
                    fontFamily: 'ChakraPetch'),
              ),
            ),
          ),

// Text 'Sign in to continue!'
          Container(
            margin: const EdgeInsets.only(
              left: 15,
              bottom: 100,
            ),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Sign up to continue!',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 30,
                    fontFamily: 'ChakraPetch'),
              ),
            ),
          ),
       
          
          

//TextFiled Username
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(children: [
               TextField(
                controller: cEmail,
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5)),
                  labelText: 'E-Mail',
                  hintText: 'Input E-mail Anda',
                  prefixIcon: Icon(Icons.mail),
                ),
              ),

              const SizedBox(
                height: 15,
              ),

              TextField(
                controller: cUser,
                decoration: const InputDecoration(
                  border:
                      OutlineInputBorder(borderSide: BorderSide(width: 1.5)),
                  labelText: 'Username',
                  hintText: 'Input Username Anda',
                  prefixIcon: Icon(Icons.person),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
//TextFiled Password
              TextField(
                obscureText: !visibilityPass,
                controller: cPass,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1.5)),
                  labelText: 'Password',
                  hintText: 'Input Password Anda',
                  prefixIcon: const Icon(Icons.lock),
            
//Icon Visibility (Mata)
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          visibilityPass = !visibilityPass;
                        });
                      },
                      icon: visibilityPass
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off),),
                ),
              ),

              const SizedBox(
                height: 15,
              ),
//Forget Password
              // const Text(
              //   "Forget password",
              //   style: TextStyle(
              //       fontWeight: FontWeight.normal,
              //       fontSize: 15,
              //       fontFamily: 'ChakraPetch'),
              // ),

             

              const SizedBox(
                height: 30,
              ),

//Button Login
              ElevatedButton(
                onPressed: () {
                  CekSignup(context);
                },
                style:
                    ElevatedButton.styleFrom(minimumSize: const Size(250, 50), backgroundColor: const Color.fromARGB(255, 0, 38, 141)),
                child: const Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 25),
                ),
              ),


            ]),
          )
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  void CekSignup(BuildContext context) {
    // final String user = 'jamjam';
    // final String pass = '12345';

    //&& kedua terpenuhi

    if (cUser.text.isNotEmpty  && cPass.text.isNotEmpty && cEmail.text.isNotEmpty) {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) =>  LoginPage()));
          
          
    // } else if (cUser.text.isEmpty && cPass.text.isEmpty && cEmail.text.isEmpty) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('Email, Username, dan Password Harus di Isi'),
    //       backgroundColor: Colors.blue,
    //     ),
    //   );
    // } else if (cUser.text != user && cPass.text == pass) {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('Username Salah'),
    //       backgroundColor: Colors.blue,
    //     ),
    //   );
    } else if (cUser.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Username Harus Diisi'),
          backgroundColor: Colors.blue,
        ),
      );
    } else if (cPass.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Password Harus Diisi'),
          backgroundColor: Colors.blue,
        ),
      );

      } else if (cEmail.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Email Harus Diisi'),
          backgroundColor: Colors.blue,
        ),
      );

    //   // } else if (cUser.text.isEmpty && cPass.text.isEmpty) {
    //   //   ScaffoldMessenger.of(context).showSnackBar(
    //   //     const SnackBar(
    //   //       content: Text('Username dan Password Harus Diisi'),
    //   //       backgroundColor: Colors.blue,
    //   //     ),
    //   //   );

    // } else {
    //   ScaffoldMessenger.of(context).showSnackBar(
    //     const SnackBar(
    //       content: Text('User dan Password Anda Salah'),
    //       backgroundColor: Colors.blue,
    //     ),
    //   );
    }
  }
}
