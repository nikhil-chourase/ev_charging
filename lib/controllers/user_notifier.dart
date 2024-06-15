import 'package:evcharging/models/user.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';




final userProvider = StateNotifierProvider<UserNotifier, User?>((ref) {
  return UserNotifier();
});

class UserNotifier extends StateNotifier<User?> {
  UserNotifier() : super(null);

  void setUser(User? user) {
    state = user;
  }
  
}
