import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutterkolkata/model/member_model.dart';

class FirestoreService {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;
  static CollectionReference memeberCollection =
      FirebaseFirestore.instance.collection('member_collection');

  //get all memeber documents
  static Future<List<MemberModel>> getAllMemberDocs() async {
    List<MemberModel> allMember = [];
    await memeberCollection.get().then(
      (QuerySnapshot snapshot) {
        for (var f in snapshot.docs) {
          // ignore: avoid_print
          Map member = f.data() as Map;
          allMember.add(
            MemberModel(
              name: member['name'],
              imageUrl: member['imageUrl'],
              title: member['title'],
              description: member['description'],
              facebookUrl: member['facebook'],
              instagramUrl: member['instagramUrl'],
              linkedInUrl: member['linkedin'],
              twitterUrl: member['twitterUrl'],
              githubUrl: member['gitHub'],
            ),
          );
        }
      },
    );
    return allMember;
  }
}
