import 'package:flutter/material.dart';

void main() {
  runApp(const SelectionExample());
}

class SelectionExample extends StatelessWidget {
  const SelectionExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SelectionHome(),
    );
  }
}

class SelectionHome extends StatefulWidget {
  const SelectionHome({super.key});

  @override
  State<SelectionHome> createState() => _SelectionHomeState();
}

class _SelectionHomeState extends State<SelectionHome> {
  bool isChecked = false;
  String gender = "Male";
  bool isSwitched = false;
  double sliderValue = 20;
  String selectedCity = "Chennai";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Selection Widgets Example")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // 🔹 CHECKBOX
            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value!;
                    });
                  },
                ),
                const Text("Accept Terms"),
              ],
            ),

            const SizedBox(height: 10),

            // 🔹 RADIO
            const Text("Select Gender"),
            Row(
              children: [
                Radio(
                  value: "Male",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                const Text("Male"),
                Radio(
                  value: "Female",
                  groupValue: gender,
                  onChanged: (value) {
                    setState(() {
                      gender = value!;
                    });
                  },
                ),
                const Text("Female"),
              ],
            ),

            const SizedBox(height: 10),

            // 🔹 SWITCH
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Enable Notifications"),
                Switch(
                  value: isSwitched,
                  onChanged: (value) {
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 10),

            // 🔹 SLIDER
            Text("Volume: ${sliderValue.toInt()}"),
            Slider(
              value: sliderValue,
              min: 0,
              max: 100,
              divisions: 10,
              label: sliderValue.toInt().toString(),
              onChanged: (value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),

            const SizedBox(height: 10),

            // 🔹 DROPDOWN BUTTON
            DropdownButton<String>(
              value: selectedCity,
              items: const [
                DropdownMenuItem(value: "Chennai", child: Text("Chennai")),
                DropdownMenuItem(value: "Bangalore", child: Text("Bangalore")),
                DropdownMenuItem(value: "Delhi", child: Text("Delhi")),
              ],
              onChanged: (value) {
                setState(() {
                  selectedCity = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
