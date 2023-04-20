import 'package:conigecgo/page/login/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (controller.sessionTest != null)
                  ? Container(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Account',
                          ),
                          Text(
                            '${controller.sessionTest.accounts[0]}',
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Text(
                                'Chain: ',
                              ),
                              Text(
                                controller.sessionTest.chainId.toString(),
                              )
                            ],
                          ),
                          const SizedBox(height: 20),
                        ],
                      ))
                  : ElevatedButton(
                      onPressed: () => controller.loginUsingMetamask(),
                      child: const Text("Connect with Metamask"))
            ],
          ),
        ),

    );
  }
}
