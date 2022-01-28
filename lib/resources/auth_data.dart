import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class authmethod
{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _data = FirebaseFirestore.instance;
  Future<String> signup ({
   required String username,
   required String email,
   required String password,
   required String bio,

  })async{
    String res = 'some error occured';
    try {
      if (username.isNotEmpty || email.isNotEmpty || password.isNotEmpty ||
          bio .isNotEmpty ) {
        //register user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(email: email, password: password);
        print(cred.user!.uid);
        //add user to database
        await _data.collection('users').doc(cred.user!.uid).set({
          'username' : username,
          'uid': cred.user!.uid,
          'email': email,
          'bio': bio,
          'followers': [],
          'following': [],

        });
        res = ' success';

      }
    }
      catch(e)
    {
      res =e.toString();
    }
      return res;
    }

  }


