import 'package:flutter/material.dart';
import 'package:restaurant_app/screens/login_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

enum accType { user, restaurant }

class _RegistrationScreenState extends State<RegistrationScreen> {
  accType _site = accType.restaurant;
  final _formKey = GlobalKey<FormState>();
  final NameEditingController = new TextEditingController();
  final EmailEditingController = new TextEditingController();
  final DistrictEditingController = new TextEditingController();
  final SectorEditingController = new TextEditingController();
  final PasswordEditingController = new TextEditingController();
  final ConfirmPasswordEditingController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    //name field
    final nameField = TextFormField(
        autofocus: false,
        controller: NameEditingController,
        keyboardType: TextInputType.emailAddress,
        //add validator soon
        onSaved: (value) {
          NameEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.people),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "restaurant name or username",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));

    //email field
    final emailField = TextFormField(
        autofocus: false,
        controller: EmailEditingController,
        keyboardType: TextInputType.emailAddress,
        //add validator soon
        onSaved: (value) {
          EmailEditingController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.mail),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "email",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));
    // //name field
    List<String> listDistrict = ["Nyarugenge", "Kicukiro", "Gasabo"];
    List<String> listSector_0 = [
      "Gitega",
      "Kanyinya",
      "Kigali",
      "Kimisagara",
      "Mageragere",
      "Muhima",
      "Nyakabanda",
      "Nyamirambo",
      "Nyarugenge",
      "Rwezamenyo"
    ];
    List<String> listSector_2 = [
      "Bumbogo",
      "Gatsata",
      "Jali",
      "Gikomero",
      "Gisozi",
      "Jabana",
      "Kinyinya",
      "Ndera",
      "Nduba",
      "Rusororo",
      "Rutunga",
      "Kacyiru",
      "Kimihurura",
      "Kimironko",
      "Remera"
    ];
    List<String> listSector_1 = [
      "Kicukiro",
      "Kagarama",
      "Niboye",
      "Gatenga",
      "Gikondo",
      "Gahanga",
      "Kanombe",
      "Nyarugunga",
      "Kigarama",
      "Masaka"
    ];

//PASSWORD FIELD
    final passwordField = TextFormField(
        autofocus: false,
        controller: PasswordEditingController,
        obscureText: true,
        onSaved: (value) {
          PasswordEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));
    final passwordCheckField = TextFormField(
        autofocus: false,
        controller: ConfirmPasswordEditingController,
        obscureText: true,
        onSaved: (value) {
          ConfirmPasswordEditingController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
            contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
            hintText: "re-enter password",
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10))));

    final registerButton = Material(
        elevation: 5,
        borderRadius: BorderRadius.circular(30),
        color: Colors.redAccent,
        child: MaterialButton(
          padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          minWidth: MediaQuery.of(context).size.width,
          onPressed: () {},
          child: Text(
            "Register",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ));

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text("Register"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                        child: Image.asset(
                          "assets/fh.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      nameField,
                      SizedBox(
                        height: 10,
                      ),
                      emailField,
                      SizedBox(
                        height: 10,
                      ),
                      passwordField,
                      SizedBox(
                        height: 20,
                      ),
                      passwordCheckField,
                      SizedBox(
                        height: 20,
                      ),
                      registerButton,
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("have an account? "),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: Text(
                              "Log In",
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: SizedBox(
                              height: 100,
                              //child: Image.asset('assets/google.png'),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
