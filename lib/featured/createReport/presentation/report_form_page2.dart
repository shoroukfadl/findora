import 'package:findora/Core/Language/app_styles.dart';
import 'package:findora/core/language/app_strings.dart';
import 'package:findora/core/language/locales.dart';
import 'package:findora/core/theme/theme_colors.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class ReportFormPage2 extends StatelessWidget {
  final String address;
  final ValueChanged<String> onAddressChanged;
  final DateTime? dateLost;
  final ValueChanged<DateTime?> onDateLostChanged;
  final VoidCallback onConfirm;

  const ReportFormPage2({
    super.key,
    required this.address,
    required this.onAddressChanged,
    required this.dateLost,
    required this.onDateLostChanged,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    final t = context.t;

    return Scaffold(
      backgroundColor: colors.background,
      appBar: AppBar(
        backgroundColor: colors.background,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: colors.text1),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStepIndicator(context, 2, 3, colors),
              const SizedBox(height: 24),
              Text(
                t.createWhereWasIt,
                style: AppTextStyles.h24(color: colors.text1),
              ),
              const SizedBox(height: 24),
              _buildMapSection(context, colors),
              const SizedBox(height: 24),
              _buildAddressInput(context, colors),
              const SizedBox(height: 24),
              _buildDateSection(context, colors),
              const SizedBox(height: 32),
              _buildConfirmButton(context, colors),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStepIndicator(
      BuildContext context, int current, int total, AppColors colors) {
    final t = context.t;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createStep(current, total),
          style: AppTextStyles.sT14(color: colors.text3),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: LinearProgressIndicator(
            value: current / total,
            backgroundColor: colors.divider,
            valueColor: AlwaysStoppedAnimation<Color>(colors.accent),
            minHeight: 4,
          ),
        ),
      ],
    );
  }

  Widget _buildMapSection(BuildContext context, AppColors colors) {
    final t = context.t;
    return Container(
      height: 200,
      decoration: BoxDecoration(
        color: colors.card,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: colors.border),
      ),
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.map_outlined,
                  color: colors.text3,
                  size: 48,
                ),
                const SizedBox(height: 8),
                Text(
                  t.createMapPlaceholder,
                  style: AppTextStyles.b14(color: colors.text3),
                ),
              ],
            ),
          ),
          Positioned(
            top: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: colors.card,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: colors.shadow,
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: Icon(
                Icons.location_on,
                color: colors.accent,
                size: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddressInput(BuildContext context, AppColors colors) {
    final t = context.t;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createStreetAddress,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        TextField(
          onChanged: onAddressChanged,
          decoration: InputDecoration(
            hintText: t.createStreetAddressHint,
            hintStyle: AppTextStyles.b15(color: colors.text3),
            filled: true,
            fillColor: colors.card,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.border),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: colors.accent),
            ),
            prefixIcon: Icon(Icons.location_on_outlined, color: colors.text3),
          ),
        ),
      ],
    );
  }

  Widget _buildDateSection(BuildContext context, AppColors colors) {
    final t = context.t;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          t.createDateLost,
          style: AppTextStyles.t16(color: colors.text1),
        ),
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: dateLost ?? DateTime.now(),
              firstDate: DateTime(2020),
              lastDate: DateTime.now().add(const Duration(days: 1)),
            );
            if (picked != null) {
              final TimeOfDay? time = await showTimePicker(
                context: context,
                initialTime: TimeOfDay.fromDateTime(dateLost ?? DateTime.now()),
              );
              if (time != null) {
                onDateLostChanged(DateTime(
                  picked.year,
                  picked.month,
                  picked.day,
                  time.hour,
                  time.minute,
                ));
              }
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: colors.card,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: colors.border),
            ),
            child: Row(
              children: [
                Icon(Icons.calendar_today_outlined, color: colors.text3),
                const SizedBox(width: 12),
                Text(
                  dateLost != null
                      ? _formatDateTime(dateLost!)
                      : t.createDateHint,
                  style: AppTextStyles.b15(
                    color: dateLost != null ? colors.text1 : colors.text3,
                  ),
                ),
                const Spacer(),
                Icon(Icons.arrow_drop_down, color: colors.text3),
              ],
            ),
          ),
        ),
      ],
    );
  }

  String _formatDateTime(DateTime dateTime) {
    final now = DateTime.now();
    final isToday = dateTime.year == now.year &&
        dateTime.month == now.month &&
        dateTime.day == now.day;

    if (isToday) {
      return 'Today, ${_formatTime(dateTime)}';
    }

    return '${_formatDate(dateTime)}, ${_formatTime(dateTime)}';
  }

  String _formatDate(DateTime dateTime) {
    return '${dateTime.day}/${dateTime.month}/${dateTime.year}';
  }

  String _formatTime(DateTime dateTime) {
    final hour = dateTime.hour == 0 ? 12 : dateTime.hour;
    final minute = dateTime.minute.toString().padLeft(2, '0');
    final period = /*dateTime. == DayPeriod.am ? 'AM' :*/ 'PM';
    return '$hour:$minute $period';
  }

  Widget _buildConfirmButton(BuildContext context, AppColors colors) {
    final t = context.t;
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: onConfirm,
        style: ElevatedButton.styleFrom(
          backgroundColor: colors.accent,
          foregroundColor: colors.onAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
        ),
        child: Text(
          t.createConfirmLocation,
          style: AppTextStyles.sT16(color: colors.onAccent),
        ),
      ),
    );
  }
}
