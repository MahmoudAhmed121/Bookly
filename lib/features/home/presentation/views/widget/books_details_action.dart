import 'package:flutter/material.dart';
import 'package:untitled3/features/home/data/models/book_model/book_model.dart';
import 'package:untitled3/features/home/presentation/views/widget/text_action_buttom.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButoom(
              onPressed: () async {
                
                 final Uri _url = Uri.parse("https://openlibrary.org/");
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("cannot lunch $_url")));
                }
              },
              fontsize: 18,
              text: "19.99€",
              TextColer: Colors.black,
              backgroundColor: Colors.white,
              borderRadius:const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButoom(
              onPressed: () async {
                final Uri _url = Uri.parse("https://www.google.com.eg/books/edition/Thor_Vs_Hulk/0KEuDwAAQBAJ?hl=ar&gbpv=1&dq=hulk+vs+thor&printsec=frontcover");
                if (await canLaunchUrl(_url)) {
                  await launchUrl(_url);
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("cannot lunch $_url")));
                }
              },
              fontsize: 16,
              text: "Free preview",
              TextColer: Colors.white,
              backgroundColor: Color(0xffEF8262),
              borderRadius:const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
