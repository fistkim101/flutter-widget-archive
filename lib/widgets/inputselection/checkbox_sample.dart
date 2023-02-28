import 'package:flutter/material.dart';

class CheckBoxSample extends StatefulWidget {
  const CheckBoxSample({Key? key}) : super(key: key);

  @override
  State<CheckBoxSample> createState() => _CheckBoxSampleState();
}

class _CheckBoxSampleState extends State<CheckBoxSample> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.red;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      // 아래와 같이 Provider 를 통해서 상호작용하고, value 도 react 하도록 한다.
      // value: widget.todo.isCompleted,
      // onChanged: (isCompleted) {
      //   setState(() {
      //     context.read<Todos>().toggleTodo(widget.todo.id);
      //   });
      // },
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
