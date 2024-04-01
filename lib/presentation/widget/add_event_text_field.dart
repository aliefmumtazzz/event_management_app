part of '../page/add_event_page.dart';

class AddEventTextField extends StatelessWidget {
  final String labelText;
  final double? width;
  final bool readOnly;
  final int? maxLength;
  final Function()? onTap;
  final TextEditingController controller;

  const AddEventTextField({
    super.key,
    required this.labelText,
    this.width,
    this.readOnly = false,
    this.maxLength,
    this.onTap,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        enableInteractiveSelection: false,
        readOnly: readOnly,
        maxLength: maxLength,
        decoration: InputDecoration(
          labelText: labelText,
          contentPadding: const EdgeInsets.all(18.0),
          hintText: labelText,
          hintStyle: const TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
    );
  }
}
