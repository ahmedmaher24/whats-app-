import 'package:flutter/material.dart';

Widget chatBubbel(BuildContext context,String text, bool isMe) {
  return Align(
    alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
    child: Container(
      // تحديد أقصى وأقل عرض للرسالة
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width * 0.75, // تأخذ 75% من عرض الشاشة كحد أقصى
        minWidth: 100, // حد أدنى عشان لو كلمة واحدة ما تبقاش صغيرة أوي
      ),
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 5),

      decoration: BoxDecoration(
        color: isMe ? Color(0xFF232D36) : Color(0xFF1EBE71),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          //لو انا اللى باعت الرساله
          bottomLeft: Radius.circular(isMe ? 15 : 0),
          //لو الشخص الاخر هو اللى باعت الرساله
          bottomRight: Radius.circular(isMe ? 0 : 15),
        ),
      ),
      child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 20)),
    ),
  );
}
Widget imageBubble(String imagePath) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Container(
      margin:  EdgeInsets.symmetric(vertical: 5),
      padding:  EdgeInsets.all(3),
      decoration: BoxDecoration(
        color:  Color(0xFF1EBE71),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(imagePath, width: 250),
      ),
    ),
  );
}



