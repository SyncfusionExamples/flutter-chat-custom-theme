import 'dart:async';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_chat/chat.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'messages.dart';

void main() {
  runApp(const Chat());
}

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  final List<ChatMessage> displayedMessages = [];

  @override
  void initState() {
    super.initState();
    if (mounted) {
      _loadMessagesWithTimeDelay();
    }
  }

  void _loadMessagesWithTimeDelay() {
    for (int i = 0; i < messages.length; i++) {
      Future.delayed(Duration(seconds: i * 2), () {
        if (mounted) {
          setState(() {
            displayedMessages.add(messages[i]);
          });
        }
      });
    }
  }

  late TextTheme _textTheme;

  @override
  Widget build(BuildContext context) {
    _textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: _buildChatPage(),
        ),
      ),
    );
  }

  ChatActionButton buildActionButton() {
    return ChatActionButton(
      onPressed: (String newMessage) {
        setState(() {
          displayedMessages.add(
            ChatMessage(
              text: newMessage,
              time: DateTime.now(),
              author: const ChatAuthor(
                id: '1-002',
                name: 'Smith',
              ),
            ),
          );
        });
      },
    );
  }

  Widget _buildChatPage() {
    return SfChatTheme(
      data: SfChatThemeData(
        // Action Button
        actionButtonForegroundColor: Colors.white,
        actionButtonBackgroundColor: Colors.purple,
        actionButtonDisabledForegroundColor: Colors.grey,
        actionButtonDisabledBackgroundColor: Colors.grey[300],
        actionButtonElevation: 4.0,
        actionButtonFocusElevation: 6.0,
        actionButtonHoverElevation: 5.0,
        actionButtonHighlightElevation: 12.0,
        actionButtonDisabledElevation: 2.0,
        actionButtonFocusColor: Colors.indigo,
        actionButtonSplashColor: Colors.orangeAccent,
        actionButtonHoverColor: const Color(0xffFF7F3E),
        actionButtonMouseCursor: SystemMouseCursors.click,
        actionButtonShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        // Editor TextStyle
        editorTextStyle: _buildTextStyle(
          _textTheme.bodyLarge!,
          color: Colors.blueGrey[800],
          fontStyle: FontStyle.italic,
          fontSize: 16.0,
        ),
        // Incoming content and shape of header of message
        incomingBubbleContentBackgroundColor: const Color(0xffA1D6CB),
        incomingContentTextStyle: _buildTextStyle(_textTheme.bodyLarge!,
            color: Colors.black, fontSize: 13.0, fontWeight: FontWeight.w600),
        incomingPrimaryHeaderTextStyle: _buildTextStyle(
          _textTheme.bodyMedium!,
          color: Colors.indigo,
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
        incomingSecondaryHeaderTextStyle: _buildTextStyle(
          _textTheme.bodySmall!,
          color: Colors.blueGrey[900],
          fontSize: 11.0,
        ),
        incomingBubbleContentShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        // Outgoing content and shape of header of message
        outgoingBubbleContentBackgroundColor:
            const Color(0xffFF7F3E).withValues(alpha: 0.8),
        outgoingContentTextStyle: _buildTextStyle(
          _textTheme.bodyLarge!,
          color: Colors.white,
          fontSize: 13.0,
          fontWeight: FontWeight.w500,
        ),
        outgoingPrimaryHeaderTextStyle: _buildTextStyle(
          _textTheme.bodyMedium!,
          color: const Color(0xffAA5486).withValues(alpha: 0.9),
          fontSize: 12.0,
          fontWeight: FontWeight.bold,
        ),
        outgoingSecondaryHeaderTextStyle: _buildTextStyle(
          _textTheme.bodySmall!,
          color: Colors.black,
          fontSize: 11.0,
        ),
        outgoingBubbleContentShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: SfChat(
        messages: displayedMessages,
        outgoingUser: '1-002',
        composer: const ChatComposer(
          decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.emoji_emotions_outlined,
              color: Colors.blueGrey,
            ),
            hintText: 'Type your message here.....',
          ),
        ),
        actionButton: buildActionButton(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}

TextStyle _buildTextStyle(
  TextStyle baseStyle, {
  Color? color,
  double? fontSize,
  FontWeight? fontWeight,
  FontStyle? fontStyle,
}) {
  return baseStyle.copyWith(
    color: color,
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontStyle: fontStyle,
  );
}
