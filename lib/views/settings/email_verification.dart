import 'package:carpooling/controllers/authController.dart';
import 'package:carpooling/widgets/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EmailVerificationScreen extends StatelessWidget {
  final _controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Email"),
        elevation: 0.5,
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15),
              alignment: Alignment.center,
              child: CustomText(
                text: _controller.user!.emailVerified
                    ? "Verified"
                    : "Pending", //verified, failed
                color: Colors.white,
              ))
        ],
      ),
      body: _controller.user!.emailVerified ? showEmailInfo() : linkEmail(),
    );
  }

  Widget linkEmail() {
    return Center(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          // minimumSize: Size(double.infinity, 70),
          primary: Colors.green,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(35),
          ),
        ),
        onPressed: () {
          Get.find<AuthController>().linkEmail();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.g_mobiledata_outlined,
              size: 30,
            ),
            CustomText(
              text: "Verify Your Google Account",
              size: 16,
              color: Colors.white,
              weight: FontWeight.bold,
            ),
          ],
        ),
      ),
    );
  }

  Widget showEmailInfo() {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage(
              _controller.user!.providerData[0].photoURL.toString(),
            ),
          ),
          SizedBox(height: 20),
          CustomText(
            text: _controller.user!.providerData[0].displayName.toString(),
            color: Colors.blue,
            size: 22,
            weight: FontWeight.bold,
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: FittedBox(
              fit: BoxFit.scaleDown,
              child: CustomText(
                text: _controller.user!.providerData[0].email.toString(),
                size: 20,
                // color: Colors.cyan,
              ),
            ),
          ),
          SizedBox(height: 10),
          CustomText(
            text: "DOB: 10 Dec, 1999",
            // color: Colors.blue,
            size: 22,
            weight: FontWeight.bold,
          ),

          // title: "Birthday",
          //             value: "10/12/1999",
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
