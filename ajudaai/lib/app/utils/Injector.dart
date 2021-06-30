import 'package:ajudaai/app/services/IUserService.dart';
import 'package:ajudaai/app/services/impl/UserService.dart';

import 'package:ajudaai/app/services/IChatService.dart';
import 'package:ajudaai/app/services/impl/ChatService.dart';

class Injector {
  static IuserService iUserService = new UserService();
  static IchatService iChatService = new ChatService();
}
