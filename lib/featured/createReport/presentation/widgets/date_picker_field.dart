import 'package:findora/core/language/app_styles.dart';
import 'package:findora/utilities/constants/constants.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class CustomDatePicker extends StatefulWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final IconData prefixIcon;
  final String? Function(String?)? validator;
  final double? borderRadius, width;
  final Color? backgroundColor, borderColor;
  final Widget? suffixIcon;

  /// Initially selected date when the controller is empty.
  final DateTime? initialDate;
  final DateTime? firstDate, lastDate;

  /// Called with the picked date.
  final ValueChanged<DateTime>? onDateSelected;

  /// Custom text formatting. Defaults to yyyy-MM-dd.
  final String Function(DateTime)? formatter;

  /// Optional text shown in the picker dialog header.
  final String? helpText;

  const CustomDatePicker({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.prefixIcon = Icons.calendar_today_outlined,
    this.validator,
    this.borderRadius,
    this.width,
    this.backgroundColor,
    this.borderColor,
    this.suffixIcon,
    this.initialDate,
    this.firstDate,
    this.lastDate,
    this.onDateSelected,
    this.formatter,
    this.helpText,
  });

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  DateTime? _selected;

  InputBorder border({Color? color}) => OutlineInputBorder(
        borderRadius:
            BorderRadius.circular(widget.borderRadius ?? fieldsRadius),
        borderSide: BorderSide(color: color ?? context.colors.accent),
      );

  String _format(DateTime d) {
    if (widget.formatter != null) return widget.formatter!(d);
    final m = d.month.toString().padLeft(2, '0');
    final day = d.day.toString().padLeft(2, '0');
    return '${d.year}-$m-$day';
  }

  Future<void> _pickDate() async {
    FocusScope.of(context).unfocus();
    final colors = context.colors;
    final now = DateTime.now();
    final first = widget.firstDate ?? DateTime(1900);
    final last = widget.lastDate ?? DateTime(2100);

    var initial = _selected ?? widget.initialDate ?? now;
    if (initial.isBefore(first)) initial = first;
    if (initial.isAfter(last)) initial = last;

    final picked = await showDatePicker(
      context: context,
      initialDate: initial,
      firstDate: first,
      lastDate: last,
      helpText: widget.helpText,
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  primary: colors.secondary,
                  onPrimary: Colors.white,
                  surface: colors.card,
                  onSurface: colors.text1,
                ),
            dialogBackgroundColor: colors.card,
          ),
          child: child!,
        );
      },
    );

    if (picked != null) {
      setState(() {
        _selected = picked;
        widget.controller.text = _format(picked);
      });
      widget.onDateSelected?.call(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return SizedBox(
      width: widget.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (widget.label != null) ...[
            Text(
              widget.label!,
              style: AppTextStyles.sT16(color: colors.text1),
            ),
            const SizedBox(height: 8),
          ],
          TextFormField(
            controller: widget.controller,
            readOnly: true,
            showCursor: false,
            onTap: _pickDate,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: widget.validator,
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
              hintText: widget.hint,
              hintStyle: AppTextStyles.b12(color: colors.text3),
              border: border(color: widget.borderColor ?? colors.border),
              enabledBorder: border(color: widget.borderColor ?? colors.border),
              disabledBorder:
                  border(color: widget.borderColor ?? colors.border),
              errorBorder: border(color: widget.borderColor ?? colors.danger),
              focusedBorder:
                  border(color: widget.borderColor ?? colors.secondary),
              focusedErrorBorder:
                  border(color: widget.borderColor ?? colors.danger),
              filled: true,
              fillColor: widget.backgroundColor ?? colors.card,
              hoverColor: Colors.transparent,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              suffixIcon: widget.suffixIcon ??
                  IconButton(
                    icon: Icon(Icons.edit_calendar_outlined,
                        color: colors.text3, size: 18),
                    onPressed: _pickDate,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
