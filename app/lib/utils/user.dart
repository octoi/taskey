import 'package:firebase_auth/firebase_auth.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

final user = auth.currentUser;

get getUser => user!;
