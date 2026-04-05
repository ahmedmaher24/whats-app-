import 'package:flutter/material.dart';
import 'package:whats_app/models/category_data/chat_massage.dart';

class FristPage extends StatelessWidget {
  const FristPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff168C4B),
      appBar: AppBar(
        backgroundColor: Color(0xff168C4B),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage(
                "assets/image/ashiaaa.png",
              ), // صورة الشخص
            ),
            const SizedBox(width: 10), // مسافة بين الصورة والاسم
            const Text(
              "ahmed maher",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.phone_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.videocam_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_outlined, color: Colors.white),
          ),
        ],
      ),
      body: Stack(
        children: [
          // 1. الخلفية (ثابتة في الـ Stack)
          SizedBox.expand(
            child: Image.asset(
              "assets/image/background.png",
              fit: BoxFit.cover,
            ),
          ),

          // 2. المحتوى (الرسائل + حقل الكتابة)
          Column(
            children: [
              // الـ Expanded هنا بيخلي الرسائل تاخد كل المساحة المتاحة وتزق الـ TextField لتحت
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(15),
                  children: [
                    chatBubbel(context, "Hello !", false),
                    chatBubbel(context, "Hello! ", true),
                    chatBubbel(
                      context,
                      "Hey! Have you ever thought about how random moments can sometimes turn into the best memories? It’s like the universe loves to surprise us when we least expect it! ",
                      false,
                    ),
                    imageBubble("assets/image/ashia.jpg"),
                    // باقي الرسائل...
                  ],
                ),
              ),

              // 3. منطقة الكتابة (في أسفل الـ Column دائماً)
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: "Type a Message",
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                          ),
                          suffixIcon: const Icon(
                            Icons.camera_alt,
                            color: Colors.grey,
                          ),
                          fillColor: const Color(0xFF232D36),
                          filled: true,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 5),
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFF1EBE71),
                      child: Icon(Icons.mic, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
