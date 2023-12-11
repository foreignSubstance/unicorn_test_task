import 'package:flutter/material.dart';
import 'package:unicorn_test_task/widgets/finance_widget.dart';
import 'package:unicorn_test_task/widgets/job_quotation_widget.dart';
import 'package:unicorn_test_task/widgets/navigation_widget.dart';
import 'package:unicorn_test_task/widgets/recent_files_widget.dart';

class Content extends StatelessWidget {
  const Content({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Navigation(),
        SizedBox(height: 24),
        JobQuotation(),
        SizedBox(height: 24),
        RecentFiles(),
        SizedBox(height: 24),
        Finance(),
        SizedBox(height: 20),
      ],
    );
  }
}
