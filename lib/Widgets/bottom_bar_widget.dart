import 'package:flutter/material.dart';
import 'package:flutter_gemini_ai/gimini_controller.dart';

class BottomBarWidget extends StatelessWidget {
  BottomBarWidget({super.key});

  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        height: 65,
        width: MediaQuery.of(context).size.width,
        color: const Color(0xff13161B),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.all(0),
              width: MediaQuery.of(context).size.width - 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 34, 37, 45),
                  borderRadius: BorderRadius.circular(5)),
              child: Center(
                child: TextFormField(
                  controller: _textEditingController,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19,
                      overflow: TextOverflow.visible),
                  decoration: const InputDecoration(
                    hintText: "  Message...",
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    isDense: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            Container(
              width: 50,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 72, 102),
                  borderRadius: BorderRadius.circular(5)),
              child: IconButton(
                icon: const Icon(Icons.send),
                color: Colors.grey,
                onPressed: () async {
                  String? value = await GeminiController.outputFromText(
                      _textEditingController.text);
                  print(value);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
