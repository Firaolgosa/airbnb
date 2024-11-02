import 'package:flutter/material.dart';

class PhoneInputSection extends StatelessWidget {
  const PhoneInputSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'United Kingdom ( +44 )',
                    style: TextStyle(fontSize: 16),
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.grey.shade600,
                  ),
                ],
              ),
            ),
          ),
          Divider(height: 1, color: Colors.grey.shade300),
          TextField(
            decoration: InputDecoration(
              hintText: 'Phone number',
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
            ),
            keyboardType: TextInputType.phone,
          ),
        ],
      ),
    );
  }
}
