import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:hns_chat/data/data_source/remote_data_source/remote_data_source.dart';

class InitBinding extends Bindings {
  @override
  void dependencies() {
    FirebaseAuth _auth = FirebaseAuth.instance;
    Get.put(_auth);
    FirebaseFirestore _firestore = FirebaseFirestore.instance;
    Get.put(_firestore);
    Get.put(ImplRemoteDataSource(auth: Get.find<FirebaseAuth>(), firestore: Get.find<FirebaseFirestore>()));
  }

}