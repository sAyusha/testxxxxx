import 'package:flutter/material.dart';

class ChatView extends StatefulWidget {
  const ChatView({Key? key}) : super(key: key);

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
  final List<Map<String, dynamic>> chatMessages = [
    {
      'senderId': 'user1',
      'message': 'Hello!',
      'timeSent': '2:30 PM',
    },
    {
      'senderId': 'user2',
      'message': 'Hi there!',
      'timeSent': '2:35 PM',
    },
    {
      'senderId': 'user1',
      'message': 'How are you?',
      'timeSent': '2:40 PM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 1,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(8),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 4),
                  const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'https://scontent.fktm10-1.fna.fbcdn.net/v/t39.30808-6/344536452_735500568257191_377604729440962274_n.jpg?stp=dst-jpg_p526x296&_nc_cat=110&ccb=1-7&_nc_sid=174925&_nc_ohc=lmlz63QYuT4AX-aLgLY&_nc_ht=scontent.fktm10-1.fna&oh=00_AfD9AwCq_5a1DBJT4YG9-6gjcTbh9GeN2pEZdALggxBvhA&oe=647E23EB'),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'Nischal Bista',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: chatMessages.length,
                reverse: true,
                itemBuilder: (context, index) {
                  final message = chatMessages[index];
                  return ChatBubble(
                    message: message['message'],
                    isSender: message['senderId'] == 'user1',
                    timeSent: message['timeSent'],
                  );
                },
              ),
            ),
            const Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffEBEAEA),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: const TextField(
                          decoration: InputDecoration(
                            hintText: 'Type a message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.blue,
                      child: IconButton(
                        icon: const Icon(Icons.send),
                        color: Colors.white,
                        iconSize: 20,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isSender;
  final String timeSent;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isSender,
    required this.timeSent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: isSender ? Alignment.centerRight : Alignment.centerLeft,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        crossAxisAlignment:
            isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: isSender ? Colors.blue : Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: isSender ? Colors.white : null,
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            timeSent,
            style: const TextStyle(fontSize: 12, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
