import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled3/features/search/presentation/cubit/cubit/search_cubit.dart';

class CustomSearcTextFaild extends StatelessWidget {
  const CustomSearcTextFaild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      onEditingComplete: (){
        if(SearchCubit.get(context).controller.text.isNotEmpty){
          SearchCubit.get(context).fetchSearchedBooks(bookName: SearchCubit.get(context).controller.text);
        }
      },
      controller: SearchCubit.get(context).controller,
      decoration: InputDecoration(
        focusedBorder: build0utlineInputBorder(),
        border: build0utlineInputBorder(),
        filled: true,
        fillColor: Color.fromARGB(145, 117, 115, 115),
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        hintText: "search",
        suffixIcon: Opacity(
          opacity: 0.8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 24,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder build0utlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(12),
    );
  }
}
