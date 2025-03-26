import 'package:syncfusion_flutter_chat/chat.dart';

List<ChatMessage> emptyMessage = <ChatMessage>[];
List<ChatMessage> messages = <ChatMessage>[
  ChatMessage(
    text: 'Good afternoon, Ms. Johnson. How are you doing today?',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-002',
      name: 'Smith',
    ),
  ),
  ChatMessage(
    text: 'Good afternoon, Mr. Smith. I\'m doing well, thank you. How are you?',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-001',
      name: 'Johnson',
    ),
  ),
  ChatMessage(
    text:
        ' I\'m quite well, thank you for asking. I wanted to discuss the upcoming project deadline. Do you have a moment to go over it?',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-002',
      name: 'Smith',
    ),
  ),
  ChatMessage(
    text:
        'Certainly. I reviewed the timeline yesterday, and it seems we are on track to meet the deadline. Do you have any concerns regarding our progress?',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-001',
      name: 'Johnson',
    ),
  ),
  ChatMessage(
    text:
        'I\'m glad to hear we\'re on track. I was slightly concerned about the resource allocation for the final phase. Do you think we have everything we need?',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-002',
      name: 'Smith',
    ),
  ),
  ChatMessage(
    text:
        'I\'ve assessed our resources, and I believe we have adequate staffing and materials. However, I will double-check with the team and ensure everything is in place.',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-001',
      name: 'Johnson',
    ),
  ),
  ChatMessage(
    text:
        'That would be great. Please keep me updated on any developments. Thank you for your attention to this matter.',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-002',
      name: 'Smith',
    ),
  ),
  ChatMessage(
    text:
        'Of course, Mr. Smith. I\'ll send you a detailed update by the end of the week. Have a great day!',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-001',
      name: 'Johnson',
    ),
  ),
  ChatMessage(
    text: 'Thank you, Ms. Johnson. You too have a pleasant day.',
    time: DateTime.now(),
    author: const ChatAuthor(
      id: '1-002',
      name: 'Smith',
    ),
  ),
];
