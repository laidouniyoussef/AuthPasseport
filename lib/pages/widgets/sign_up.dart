import 'package:authpasseport/pages/form_page.dart';
import 'package:authpasseport/widgets/snackbar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final FocusNode focusNodePassword = FocusNode();
  final FocusNode focusNodeConfirmPassword = FocusNode();
  final FocusNode focusNodeCIN = FocusNode();
  final FocusNode focusNodeFirstName = FocusNode();
  final FocusNode focusNodeLastName = FocusNode();
  final FocusNode focusNodePhone = FocusNode();

  bool _obscureTextPassword = true;
  bool _obscureTextConfirmPassword = true;

  TextEditingController signupCINController = TextEditingController();
  TextEditingController signupFirstNameController = TextEditingController();
  TextEditingController signupLastNameController = TextEditingController();
  TextEditingController signupPasswordController = TextEditingController();
  TextEditingController signupPhoneController = TextEditingController();
  TextEditingController signupConfirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    focusNodePassword.dispose();
    focusNodeConfirmPassword.dispose();
    focusNodeCIN.dispose();
    focusNodeFirstName.dispose();
    focusNodeLastName.dispose();
    focusNodePhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.only(top: 23.0),
        child: Column(
          children: <Widget>[
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Card(
                  elevation: 2.0,
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: SizedBox(
                    width: 300.0,
                    height: 400.0,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, bottom: 7.0, left: 25.0, right: 25.0),
                            child: TextField(
                              focusNode: focusNodeFirstName,
                              controller: signupFirstNameController,
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.words,
                              autocorrect: false,
                              style: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold',
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  FontAwesomeIcons.user,
                                  color: Colors.black,
                                ),
                                hintText: 'First Name',
                                hintStyle: TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0),
                              ),
                              onSubmitted: (_) {
                                focusNodeCIN.requestFocus();
                              },
                            ),
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, bottom: 7.0, left: 25.0, right: 25.0),
                            child: TextField(
                              focusNode: focusNodeLastName,
                              controller: signupLastNameController,
                              keyboardType: TextInputType.text,
                              textCapitalization: TextCapitalization.words,
                              autocorrect: false,
                              style: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold',
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  FontAwesomeIcons.userCheck,
                                  color: Colors.black,
                                ),
                                hintText: 'Last Name',
                                hintStyle: TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0),
                              ),
                              onSubmitted: (_) {
                                focusNodeCIN.requestFocus();
                              },
                            ),
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, bottom: 7.0, left: 25.0, right: 25.0),
                            child: TextField(
                              focusNode: focusNodeCIN,
                              controller: signupCINController,
                              keyboardType: TextInputType.text,
                              autocorrect: false,
                              style: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold',
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  FontAwesomeIcons.idCard,
                                  color: Colors.black,
                                ),
                                hintText: 'CIN',
                                hintStyle: TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0),
                              ),
                              onSubmitted: (_) {
                                focusNodePassword.requestFocus();
                              },
                            ),
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, bottom: 7.0, left: 25.0, right: 25.0),
                            child: TextField(
                              focusNode: focusNodePhone,
                              controller: signupPhoneController,
                              keyboardType: TextInputType.phone,
                              autocorrect: false,
                              style: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold',
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                icon: Icon(
                                  FontAwesomeIcons.phone,
                                  color: Colors.black,
                                ),
                                hintText: 'Phone',
                                hintStyle: TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0),
                              ),
                              onSubmitted: (_) {
                                focusNodePassword.requestFocus();
                              },
                            ),
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, bottom: 7.0, left: 25.0, right: 25.0),
                            child: TextField(
                              focusNode: focusNodePassword,
                              controller: signupPasswordController,
                              obscureText: _obscureTextPassword,
                              autocorrect: false,
                              style: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold',
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: const Icon(
                                  FontAwesomeIcons.lock,
                                  color: Colors.black,
                                ),
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0),
                                suffixIcon: GestureDetector(
                                  onTap: _toggleSignup,
                                  child: Icon(
                                    _obscureTextPassword
                                        ? FontAwesomeIcons.eye
                                        : FontAwesomeIcons.eyeSlash,
                                    size: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              onSubmitted: (_) {
                                focusNodeConfirmPassword.requestFocus();
                              },
                            ),
                          ),
                          Container(
                            width: 250.0,
                            height: 1.0,
                            color: Colors.grey[400],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 7.0, bottom: 7.0, left: 25.0, right: 25.0),
                            child: TextField(
                              focusNode: focusNodeConfirmPassword,
                              controller: signupConfirmPasswordController,
                              obscureText: _obscureTextConfirmPassword,
                              autocorrect: false,
                              style: const TextStyle(
                                  fontFamily: 'WorkSansSemiBold',
                                  fontSize: 16.0,
                                  color: Colors.black),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                icon: const Icon(
                                  FontAwesomeIcons.lock,
                                  color: Colors.black,
                                ),
                                hintText: 'Confirmation',
                                hintStyle: const TextStyle(
                                    fontFamily: 'WorkSansSemiBold',
                                    fontSize: 16.0),
                                suffixIcon: GestureDetector(
                                  onTap: _toggleSignupConfirm,
                                  child: Icon(
                                    _obscureTextConfirmPassword
                                        ? FontAwesomeIcons.eye
                                        : FontAwesomeIcons.eyeSlash,
                                    size: 15.0,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              onSubmitted: (_) {
                                _toggleSignUpButton();
                              },
                              textInputAction: TextInputAction.go,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 380.0),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Color.fromARGB(255, 209, 217, 241),
                        offset: Offset(1.0, 6.0),
                        blurRadius: 20.0,
                      ),
                      BoxShadow(
                        color: Color.fromARGB(255, 59, 59, 114),
                        offset: Offset(1.0, 6.0),
                        blurRadius: 20.0,
                      ),
                    ],
                    gradient: LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 76, 99, 201),
                          Color.fromARGB(255, 79, 163, 231)
                        ],
                        begin: FractionalOffset(0.2, 0.2),
                        end: FractionalOffset(1.0, 1.0),
                        stops: <double>[0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: MaterialButton(
                    highlightColor: const Color.fromARGB(0, 57, 50, 158),
                    splashColor: const Color.fromARGB(255, 62, 60, 170),
                    //shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 42.0),
                      child: Text(
                        'SIGN UP',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.0,
                            fontFamily: 'WorkSansBold'),
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FormPage()))
                    },
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _toggleSignUpButton() {
    CustomSnackBar(context, const Text('SignUp button pressed'));
  }

  void _toggleSignup() {
    setState(() {
      _obscureTextPassword = !_obscureTextPassword;
    });
  }

  void _toggleSignupConfirm() {
    setState(() {
      _obscureTextConfirmPassword = !_obscureTextConfirmPassword;
    });
  }
}
