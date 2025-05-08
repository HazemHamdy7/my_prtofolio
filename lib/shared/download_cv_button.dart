 import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:my_prtofolio/features/home/widget/style_button.dart';
import 'package:path_provider/path_provider.dart';
import 'package:universal_html/html.dart' as html;
import 'package:my_prtofolio/shared/style/app_colors.dart';

class DownloadCVButton extends StatefulWidget {
  final String fileUrl;
  final String fileName;

  const DownloadCVButton({
    super.key,
    required this.fileUrl,
    this.fileName = 'Hazem_CV.pdf',
  });

  @override
  _DownloadCVButtonState createState() => _DownloadCVButtonState();
}

class _DownloadCVButtonState extends State<DownloadCVButton> {
  bool _isDownloading = false; // لتتبع حالة التحميل

  Future<void> _downloadFile(BuildContext context) async {
    try {
      setState(() {
        _isDownloading = true;  
      });

      if (kIsWeb) {
        // Web download
        html.AnchorElement anchor =
            html.AnchorElement(href: widget.fileUrl)
              ..target = 'blank'
              ..download = widget.fileName
              ..click();
      } else {
        // Mobile/Desktop download
        final dir = await getApplicationDocumentsDirectory();
        final filePath = '${dir.path}/${widget.fileName}';
        await Dio().download(widget.fileUrl, filePath);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("تم تحميل السيرة الذاتية إلى:\n$filePath")),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("حدث خطأ أثناء التحميل: $e")));
    } finally {
      setState(() {
        _isDownloading = false; // تم الانتهاء من التحميل
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryButton(
      title:
          _isDownloading
              ? "تحميل..."
              : "Download CV", // تغيير النص أثناء التحميل
      onPressed:
          _isDownloading
              ? null
              : () => _downloadFile(context), // تعطيل الزر أثناء التحميل
      backgroundColor: AppColors.primaryColor, // Teal
    );
  }
}
