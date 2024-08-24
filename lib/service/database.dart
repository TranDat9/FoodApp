import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fooddeliveryapp/pages/wallet.dart';
class DatabaseMethods{
  Future addUserDetail(Map<String, dynamic> userInfoMap, String id) async{
    return await FirebaseFirestore.instance
        .collection('user')
        .doc(id)
        .set(userInfoMap);
  }


  Future addFoodItem(Map<String, dynamic> userInfoMap, String name) async{
    return await FirebaseFirestore.instance
        .collection(name)
        .add(userInfoMap);
  }
  Future<Stream<QuerySnapshot>> getFoodItem(String name) async{
    return await FirebaseFirestore.instance.collection(name).snapshots();
  }

  Future addFoodToCart(Map<String, dynamic> userInfoMap, String id) async{
    return await FirebaseFirestore.instance
        .collection('user')
        .doc(id)
        .collection("Cart")
        .add(userInfoMap);
  }

  Future<Stream<QuerySnapshot>> getFoodCart(String id) async{
    return await FirebaseFirestore.instance.collection("users")
        .doc(id).collection("Cart")
        .snapshots();
  }

  UpdateUserwallet(String id, String amount) async {
    return await FirebaseFirestore.instance
        .collection("user")
        .doc(id)
        .update({"Wallet": amount});
  }

}