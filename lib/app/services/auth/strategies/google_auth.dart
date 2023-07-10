/**
 * Description: 
 *  This is the file that contains the Google Auth Strategy.
 *  This strategy is used to authenticate users using their Google account.
 * 
 * Import the google_sin_in package and the http package in order to use this strategy.
 * 
 * Uncomment the code below to use this strategy.
 */

// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:http/http.dart' as http;

// final googleSignIn = GoogleSignIn(
//   scopes: ['email', 'profile'],
// );

// Future<void> signInWithGoogle() async {
//   try {
//     final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
//     if (googleUser == null) {
      
//       return;
//     } // Handle sign-in cancellation or error

//     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//     final accessToken = googleAuth.accessToken;

//     final response = await http.get(Uri.parse('https://www.googleapis.com/oauth2/v3/userinfo'), headers: {
//       'Authorization': 'Bearer $accessToken',
//     });

//     /* Parse the user data from the response :
//     Example: 
//       String email = jsonDecode(response.body)['email'];)
//     Then save the user data in the database or in the shared preferences 
//     */
//
//   } catch (error) {
//
//   }
// }