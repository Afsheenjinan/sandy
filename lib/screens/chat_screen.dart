import 'package:flutter/material.dart';
import 'package:sandy/models/message_model.dart';
import 'package:sandy/models/user_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.primary,
        appBar: AppBar(
          title: Text(widget.user.name),
          actions: [
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          ],
          elevation: 0,
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: ListView.builder(
                        reverse: true,
                        padding: const EdgeInsets.only(top: 20),
                        itemCount: messages.length,
                        itemBuilder: (context, index) {
                          Message message = messages[index];
                          bool isMe = message.sender.id == currentUser.id;
                          return _buildMessage(message, isMe);
                        }),
                  ),
                ),
              ),
              _buildMessageComposer()
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessage(Message message, bool isMe) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          color: isMe
              ? Theme.of(context).colorScheme.secondary
              : const Color(0xFFFFEFEE),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(2, 2),
            )
          ],
        ),
        margin: isMe
            ? const EdgeInsets.only(top: 10, bottom: 10, left: 80, right: 10)
            : const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 80),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(message.text),
            Text(message.date),
          ],
        ));
  }

  _buildMessageComposer() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 50,
      color: Colors.amber.shade50,
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo),
            color: Theme.of(context).colorScheme.primary,
          ),
          Expanded(
            child: TextField(
              onChanged: (value) {},
              textCapitalization: TextCapitalization.sentences,
              decoration:
                  const InputDecoration.collapsed(hintText: "Send a Message"),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.send_rounded),
            color: Theme.of(context).colorScheme.primary,
          )
        ],
      ),
    );
  }
}
