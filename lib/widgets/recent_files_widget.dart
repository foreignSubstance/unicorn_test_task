import 'package:flutter/material.dart';
import 'package:unicorn_test_task/settings.dart';

class RecentFiles extends StatelessWidget {
  const RecentFiles({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Files',
                style: widgetTitleStyle,
              ),
              Text(
                'View all',
                style: buttonTextStyle,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Container(
          margin: const EdgeInsets.only(left: 20),
          height: 123,
          child: ListView(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            children: const [
              FileCard(
                icon: 'assets/images/pdf_icon.png',
                title: 'Sink Repair...',
                filePreview: 'assets/images/pdf_preview.png',
              ),
              FileCard(
                icon: 'assets/images/doc_icon.png',
                title: 'Sink Repair...',
                filePreview: 'assets/images/doc_preview.png',
              ),
              FileCard(
                icon: 'assets/images/img_icon.png',
                title: 'Sink Repair...',
                filePreview: 'assets/images/quotation.png',
              ),
              FileCard(
                icon: 'assets/images/img_icon.png',
                title: 'Sink Repair...',
                filePreview: 'assets/images/quotation.png',
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FileCard extends StatelessWidget {
  const FileCard(
      {required this.icon,
      required this.title,
      required this.filePreview,
      super.key});
  final String icon;
  final String title;
  final String filePreview;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      width: 110,
      height: 123,
      decoration: const BoxDecoration(
        color: Color(0xFFFCFEFF),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        boxShadow: [
          BoxShadow(
            color: Color(0x267799A8),
            blurRadius: 10,
            offset: Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            clipBehavior: Clip.hardEdge,
            width: 93,
            height: 84,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xFFD3E0E6),
                strokeAlign: BorderSide.strokeAlignOutside,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                filePreview,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 4),
          SizedBox(
            width: 94,
            child: Row(
              children: [
                SizedBox(
                  width: 16,
                  height: 16,
                  child: Image.asset(
                    icon,
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  title,
                  overflow: TextOverflow.clip,
                  style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF738B96)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
