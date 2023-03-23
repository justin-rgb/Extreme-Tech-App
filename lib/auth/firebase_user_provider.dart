import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class ExtremeTechAppFirebaseUser {
  ExtremeTechAppFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

ExtremeTechAppFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<ExtremeTechAppFirebaseUser> extremeTechAppFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<ExtremeTechAppFirebaseUser>(
      (user) {
        currentUser = ExtremeTechAppFirebaseUser(user);
        return currentUser!;
      },
    );
