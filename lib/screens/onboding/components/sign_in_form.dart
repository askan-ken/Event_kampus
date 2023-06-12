import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class SignInWidget extends StatelessWidget {
  const SignInWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: TextStyle(color: Colors.black54),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: TextFormField(
            decoration: InputDecoration(
                prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SvgPicture.asset("assets/icons/email.svg"),
            )),
          ),
        ),
        Text(
          "Password",
          style: TextStyle(color: Colors.black54),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 16),
          child: TextFormField(
            obscureText: true,
            decoration: InputDecoration(
                prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: SvgPicture.asset("assets/icons/password.svg"),
            )),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(248, 219, 1, 5),
            minimumSize: Size(double.infinity, 56),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
          ),
          icon: Icon(
            CupertinoIcons.arrow_right,
            color: const Color.fromARGB(255, 173, 13, 1),
          ),
          label: Text("Sign In"),
        ),
      ],
    ));
  }
}
