import 'package:chatroom/Screens/chat_screen.dart';
import 'package:chatroom/Screens/login_screen.dart';
import 'package:chatroom/Screens/registration_screen.dart';
import 'package:chatroom/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChatRoom());
}

class ChatRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.page,
      routes: {
        WelcomeScreen.page : (context) => WelcomeScreen(),
        LoginScreen.page  : (context) => LoginScreen(),
        RegistrationScreen.page : (context) => RegistrationScreen(),
        ChatScreen.page : (context) => ChatScreen(),
       },
    );
  }
}
