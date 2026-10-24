import 'package:findora/featured/editReport/domain/entity/edit_report_entity.dart';
import 'package:findora/featured/editReport/presentation/widgets/edit_description_input.dart';
import 'package:findora/featured/editReport/presentation/widgets/edit_title_input.dart';
import 'package:findora/featured/editReport/presentation/widgets/save_button.dart';
import 'package:findora/featured/editReport/presentation/widgets/status_selector.dart';
import 'package:findora/shared/customWidgets/secondary_app_bar.dart';
import 'package:findora/shared/helper/screen_spacer.dart';
import 'package:findora/shared/mainLayout/screen_layout_widget.dart';
import 'package:findora/utilities/constants/enums.dart';
import 'package:findora/utilities/extentions/extensions.dart';
import 'package:flutter/material.dart';

class EditReportPage extends StatefulWidget {
  static String routeName = ScreenRoutes.editReport.name;

  const EditReportPage({super.key});

  @override
  State<EditReportPage> createState() => _EditReportPageState();
}

class _EditReportPageState extends State<EditReportPage> {
  EditReportEntity _report = EditReportEntity(
    id: '',
    title: 'Black leather wallet',
    description: 'Contains an ID card and two bank cards',
    status: ReportStatus.open,
  );

  void _saveChanges() {
    // TODO: Implement save logic
    print('Saving changes: ${_report.toJson()}');
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SubLayoutWidget(
      child: ScreenLayoutWidget(
        bottom: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SaveButton(onSave: _saveChanges),
        ),
        children: [
          SecondaryAppBar(title: 'Edit report').asPaddedSliver(),
          const ScreenSpacer(),
          StatusSelector(
            selectedStatus: _report.status,
            onStatusChanged: (status) {
              setState(() {
                _report = _report.copyWith(status: status);
              });
            },
          ).asPaddedSliver(),
          const ScreenSpacer(),
          EditTitleInput(
            title: _report.title,
            onChanged: (value) {
              setState(() {
                _report = _report.copyWith(title: value);
              });
            },
          ).asPaddedSliver(),
          const ScreenSpacer(),
          EditDescriptionInput(
            description: _report.description,
            onChanged: (value) {
              setState(() {
                _report = _report.copyWith(description: value);
              });
            },
          ).asPaddedSliver(),
          const ScreenSpacer(),
        ],
      ),
    );
  }
}
