import 'package:flutter/material.dart';
import 'package:flutter_face_pile/flutter_face_pile.dart';

class FaceList extends StatefulWidget {
  const FaceList({super.key});

  @override
  State<FaceList> createState() => _FaceListState();
}

class _FaceListState extends State<FaceList> {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: 150),
      child: FacePile(
        faces: [
          FaceHolder(
            avatar: const AssetImage(
                'assets/Anurag_-_Coding_Mentor_i9423MI2ol.webp'),
            name: '',
            id: '3',
          ),
          FaceHolder(
            avatar: const AssetImage(
                'assets/Rajan_-_Coding_Mentor_BwbwrC29d1.webp'),
            name: '',
            id: '2',
          ),
          FaceHolder(
            avatar: const AssetImage(
                'assets/Harshit-_Coding_Mentor_qIeSOYheY.webp'),
            name: '',
            id: '1',
          ),
        ],
        faceSize: 50,
        facePercentOverlap: .5,
        borderColor: Colors.white,
        borderWidth: 2,
      ),
    );
  }
}
