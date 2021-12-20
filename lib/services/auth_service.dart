import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart' as Firebase;
import 'package:flutter_all_platforms_project/constants/keys.dart';
import 'package:flutter_all_platforms_project/constants/snack.dart';
import 'package:flutter_all_platforms_project/models/user.dart';
import 'package:flutter_all_platforms_project/routes/app_pages.dart';
import 'package:flutter_all_platforms_project/services/api_service.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../controllers/login_controller.dart';

class AuthService extends GetxService {
  RxBool isLoggedIn = false.obs;
  // User? user;
  // Firebase.User? firebaseUser;
  // Firebase.FirebaseAuth _firebaseAuth = Firebase.FirebaseAuth.instance;
  ApiService apiService = Get.find();
  final box = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    // print('Firebase projectId: ${_firebaseAuth.app.options.projectId}');
    //
    ever(isLoggedIn, handleAuthStateChanged);
    // _firebaseAuth.authStateChanges().listen((fbUser) async {
    //   //firebase auth
    //   await saveFirebaseToken(fbUser);
    //   if (fbUser == null || box.read(Keys.firebaseToken) == null) {
    //     isLoggedIn.value = false;
    //     return;
    //   }
    //
    //   //api server auth
    //   await authOnApiServer();
    //   if (user == null || getWallkitToken() == null) {
    //     isLoggedIn.value = false;
    //     await clearUserData();
    //     return;
    //   }
    //
    //   firebaseUser = fbUser;
    //   isLoggedIn.value = true;
    // });
    //
    // _firebaseAuth.idTokenChanges().listen((fbUser) async {
    //   await saveFirebaseToken(fbUser);
    // });

    super.onReady();
  }

  void handleAuthStateChanged(isLoggedIn) {
    print('isLoggedIn: $isLoggedIn');
    if (isLoggedIn) {
      Get.offAllNamed(Routes.HOMEPAGE);
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  Future<void> authOnApiServer() async {
    // try {
    //   // get user and token from server
    //   final response = await Dio(
    //     BaseOptions(baseUrl: "env!.baseUrl"),
    //   ).post('/auth/oauth', data: {
    //     'firebase_token': getFirebaseToken(),
    //     'conference_id': box.read(Keys.conferenceId),
    //   });
    //
    //   if (response.data['error'] == false) {
    //     user = User.fromJson(response.data['user']);
    //     final wallkitToken = response.data['wallkit_token'];
    //     saveWallkitToken(wallkitToken);
    //   } else {
    //     clearUserData();
    //     print('response.data.error: ${response.data['error']}');
    //   }
    // } catch (e, stack) {
    //   print('error on authOnApiServer! $e');
    //   print(stack);
    //   clearUserData();
    //   if (e is DioError) {
    //     Snack.showError(
    //       "something_isn_t_quite_right".tr,
    //       e.response?.data['message'] ?? "try_again_later".tr,
    //     );
    //   } else {
    //     Snack.showError("something_isn_t_quite_right".tr, "try_again_later".tr);
    //   }
    // } finally {
    //   stopLoginLoading();
    // }
  }

  void signInWithEmailAndPassword({
    String email = '',
    String password = '',
  }) async {
    var response =await apiService.withoutAuth.post("/auth/login",data: {
      "login":email,
      "password":password,
      "rememberMe":false
    }
    );
    if(response.statusCode==200)
      box.write(Keys.token, response.data["model"]["accessToken"].toString());
    isLoggedIn(true);
    // try {
    //   await _firebaseAuth.signInWithEmailAndPassword(
    //     email: email,
    //     password: password,
    //   );
    // } on Firebase.FirebaseAuthException catch (e) {
    //   Snack.showError("something_isn_t_quite_right".tr, convertFirebaseError(e));
    //   stopLoginLoading();
    // }
  }

  String convertFirebaseError(Firebase.FirebaseAuthException e) {
    switch (e.code) {
      case 'user-disabled':
      case 'user-not-found':
      case 'wrong-password':
        return "please_enter_correct_email".tr;
      default:
        return "try_again_later".tr;
    }
  }

  Future<void> resetPassword({String email = ''}) async {
    // return _firebaseAuth.sendPasswordResetEmail(email: email);
  }
  

  void saveToken(String? token) {
    if (token == null) {
      return;
    }
    box.write(Keys.token, token);
  }


  Future<void> clearUserData() async {
    box.remove(Keys.token);
    // await _firebaseAuth.signOut();
  }

  void stopLoginLoading() {
    LoginController loginController = Get.put(LoginController());
    loginController.loading.value = false;
  }

  @override
  void onClose() {}
}
