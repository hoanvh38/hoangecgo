import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:walletconnect_dart/walletconnect_dart.dart';

class LoginController extends GetxController {
  final connector = WalletConnect(
      bridge: 'https://bridge.walletconnect.org',
      clientMeta: const PeerMeta(
          name: 'My App',
          description: 'An app for converting pictures to NFT',
          url: 'https://trustgem.io',
          icons: ['https://trustgem.io/favicon.ico']));

  var sessionTest;

  final uri = ''.obs;
  final signature = ''.obs;

  @override
  void onInit() {
    super.onInit();
    init();
  }

  init() {
    connector.on('connect', (session) => {sessionTest = session});
    // connector.on(
    //     'session_update',
    //     (payload) => setState(() {
    //           _session = payload;
    //           print(_session.accounts[0]);
    //           print(_session.chainId);
    //         }));
    // connector.on(
    //     'disconnect',
    //     (payload) => setState(() {
    //           _session = null;
    //         }));
  }

  loginUsingMetamask() async {
    print('xxxx');
    if (!connector.connected) {
      try {
        print('2');
        var session =
            await connector.createSession(onDisplayUri: (value) async {
          uri.value = value;
          await launchUrlString(value, mode: LaunchMode.externalApplication);
        });
        print('3');
        sessionTest = session;
      } catch (exp) {
        print(exp);
      }
    }
  }

  signMessageWithMetamask(String message) async {
    if (connector.connected) {
      try {
        print("Message received");
        print(message);

        EthereumWalletConnectProvider provider =
            EthereumWalletConnectProvider(connector);
        launchUrlString(uri.value, mode: LaunchMode.externalApplication);
        var signature = await provider.personalSign(
            message: message,
            address: sessionTest.value.accounts[0],
            password: "");
        print(signature);
        // setState(() {
        //   _signature = signature;
        // });
      } catch (exp) {
        print("Error while signing transaction");
        print(exp);
      }
    }
  }
}
