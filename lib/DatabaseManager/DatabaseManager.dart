import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference profileList =
  FirebaseFirestore.instance.collection('Profiles');

  Future<void> createUserData(
      String name, String gender, String age, String phone, String uid) async {
    return await profileList
        .doc(uid)
        .set({'name': name, 'gender': gender, 'phone': phone, 'age': age});
  }

  Future updateUserList(String name, String gender, String phone, String age, String uid) async {
    return await profileList.doc(uid).update({
      'name': name,
      'gender': gender,
      'phone': phone,
      'age': age,

    });
  }

  Future getUsersList() async {
    List itemsList = [];

    try {
      await profileList.get().then((querySnapshot) {
        querySnapshot.docs.forEach((element) {
          itemsList.add(element.data);
        });
      });
      return itemsList;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}