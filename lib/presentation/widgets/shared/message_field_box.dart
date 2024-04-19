import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    final FocusNode focusNode = FocusNode();

    final colors = Theme.of(context).colorScheme;

    final outLineInputBorder = UnderlineInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      hintText: 'End your message with a "?"',
      filled: true,
      enabledBorder: outLineInputBorder,
      focusedBorder: outLineInputBorder,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('Button $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print('submited value: $value');
        textController.clear();
        focusNode.requestFocus();
      },
    );
  }
}
