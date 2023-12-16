import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auths;
import 'package:hns_chat/app/utils/constants/constant.dart';
import 'package:hns_chat/data/models/user.dart';

abstract class RemoteDataSource {
  Future<void> register(User user , String password);
  Future<void> login(String email, String password);
}


class ImplRemoteDataSource implements RemoteDataSource {

  auths.FirebaseAuth auth ;
  FirebaseFirestore firestore ;
  ImplRemoteDataSource({required this.auth,required this.firestore});
  @override
  Future<void> register(User user, String password) async {
   await auth.createUserWithEmailAndPassword(email: user.email!, password: password).then((value){
      firestore.collection(FireStoreEndPoints.users).add(user.toJson()).then((value){
        user.id = value.id;
        firestore.collection(FireStoreEndPoints.users).doc(value.id).update(user.toJson());
      });
    });
  }

  @override
  Future<void> login(String email, String password) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }

}