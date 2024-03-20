import 'package:flutter/material.dart';
import 'package:my_chat_app/chat.dart';
import 'package:my_chat_app/constant.dart';
import 'package:my_chat_app/model/profile.dart';

class ChatUserProfilePage extends StatefulWidget {
  const ChatUserProfilePage({super.key});

  static Route<void> route() {
    return MaterialPageRoute(
      builder: (context) => const ChatUserProfilePage(),
    );
  }

  @override
  State<ChatUserProfilePage> createState() => _ChatUserProfilePageState();
}

class _ChatUserProfilePageState extends State<ChatUserProfilePage> {
  List<Profile> dataList = [];

  Future<void> fetchdata() async {
    final response = await supabase.from('profiles').select();

    setState(() {
      dataList.addAll(response.map((entry) => Profile.fromMap(entry)));
    });
  }

  @override
  void initState() {
    fetchdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Your Contact List'),
        ),
        body: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: const CircleAvatar(
                backgroundColor: Colors.red,
              ),
              title: Text(dataList[index].username),
              subtitle: const Text('last chat'),
              trailing: const Text(' time'),
              selectedColor: Colors.grey.shade400,
              shape: Border(bottom: BorderSide(color: Colors.grey.shade300)),
              onTap: () {
                Navigator.push(context, ChatPage.route(dataList[index]));
              },
            );
          },
        ),
      ),
    );
  }
}
