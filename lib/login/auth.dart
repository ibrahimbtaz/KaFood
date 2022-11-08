import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_login_facebook/flutter_login_facebook.dart';

class Auth {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  User? get currentUser => _firebaseAuth.currentUser;

  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  CollectionReference users = FirebaseFirestore.instance.collection('users');

  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  Future<void> sendPasswordResetEmail({
    required String email,
  }) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    await Future.delayed(const Duration(seconds: 1));
  }

  Future<void> addUserData({Map<String, dynamic>? data}) async {
    // Call the user's CollectionReference to add a new user
    return users
        .doc(currentUser?.uid)
        .set(data)
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser =
        await GoogleSignIn(scopes: <String>["email"]).signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;
    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );
    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  signInWithFacebook() async {
    final fb = FacebookLogin();
    // Log in
    final res = await fb.logIn(permissions: [
      FacebookPermission.publicProfile,
      FacebookPermission.email,
    ]);
    // Check result status
    switch (res.status) {
      case FacebookLoginStatus.success:
        // The user is suceessfully logged in
        // Send access token to server for validation and auth
        final FacebookAccessToken? accessToken = res.accessToken;
        final AuthCredential authCredential =
            FacebookAuthProvider.credential(accessToken!.token);
        final result =
            await FirebaseAuth.instance.signInWithCredential(authCredential);
        // Get profile data from facebook for use in the app
        final profile = await fb.getUserProfile();
        print('Hello, ${profile?.name}! You ID: ${profile?.userId}');
        // Get user profile image url
        final photoURL = await fb.getProfileImageUrl(width: 60);
        print('Your profile image: $photoURL');
        // fetch user email
        final email = await fb.getUserEmail();
        // But user can decline permission
        print('And your email is $email');
        break;
      case FacebookLoginStatus.cancel:
        // In case the user cancels the login process
        break;
      case FacebookLoginStatus.error:
        // Login procedure failed
        print('Error while log in: ${res.error}');
        break;
    }

//     final facebookLogin = FacebookLogin();
// // Remember you MUST login with email permission
//     final res = await facebookLogin.logIn(permissions: [
//       FacebookPermission.publicProfile,
//       FacebookPermission.email,
//     ]);
//     final FacebookAccessToken? accessToken = res.accessToken;
//     final AuthCredential authCredential =
//         FacebookAuthProvider.credential(accessToken!.token);
//     //         FacebookAuthProvider.credential(accessToken!.token);
//     try {
//       // Assume we'll login with an error that causes `ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL`
//       await _firebaseAuth.signInWithCredential(authCredential);
//     } on PlatformException catch (e) {
//       if (e.code != 'ERROR_ACCOUNT_EXISTS_WITH_DIFFERENT_CREDENTIAL') throw e;
//       // Now we caught the error we're talking about, we get the email by calling graph API manually
//       final httpClient = new HttpClient();
//       final graphRequest = await httpClient.getUrl(Uri.parse(
//           "https://graph.facebook.com/v2.12/me?fields=email&access_token=${res.accessToken!.token}"));
//       final graphResponse = await graphRequest.close();
//       final graphResponseJSON =
//           json.decode((await graphResponse.transform(utf8.decoder).single));
//       final email = graphResponseJSON["email"];
//       // Now we have both credential and email that is required for linking
//       final signInMethods =
//           await FirebaseAuth.instance.fetchSignInMethodsForEmail(email);
//       // Assume that signInMethods[0] is 'google.com'
//       final authResult =
//           signInWithGoogle(); // ... do the Google sign-in logic here and get the Firebase AuthResult
//       if (authResult.user.email == email) {
//         // Now we can link the accounts together
//         await authResult.user.linkWithCredential(authCredential);
//       }
//     }
  }

  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
