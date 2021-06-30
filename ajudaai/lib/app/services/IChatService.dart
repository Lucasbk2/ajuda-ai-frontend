import 'package:ajudaai/app/shared/models/Message.dart';

abstract class IchatService {
  Future<List<Message>> getAllmessage();
  Future<int> insertMessage(Message msg);
}
