class User with GetMailMixin {
  final String email;

  User({
    required this.email,
  });
}

class AdminUser extends User with GetMailMixin {
  AdminUser({required super.email});
}

class GeneralUser extends User with GetMailMixin {
  GeneralUser({required super.email});
}

mixin GetMailMixin {
  String getMailSystem(String email) {
    final int mailIndex = email.indexOf('@');
    final String res = email.replaceRange(0, mailIndex + 1, '');

    return res;
  }
}

class UserManager<T extends User> {
  final List<T> users = [];

  void addUser(T user) {
    users.add(user);

    print('user: $user added');
  }

  void removeUser(T user) {
    users.remove(user);

    print('user: $user removed');
  }

  void printUsersEmails() {
    for (T element in users) {
      print(element is GeneralUser
          ? element.email
          : element.getMailSystem(element.email));
    }
  }
}
