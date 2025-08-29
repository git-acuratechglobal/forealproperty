
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomContainerText extends StatefulWidget {
  final String title;
  final String title2;

  const CustomContainerText({
    super.key,
    required this.title,
    required this.title2,
  });

  @override
  State<CustomContainerText> createState() => _CustomContainerTextState();
}

class _CustomContainerTextState extends State<CustomContainerText> {
  bool isExpanded = false;
  late bool showMoreButton;

  @override
  void initState() {
    super.initState();
    showMoreButton = _shouldShowMore(widget.title2);
  }

  // Approximate logic to determine if "more" should show (adjust as needed)
  bool _shouldShowMore(String text) {
    return text.trim().length > 100; // You can tweak the threshold
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 150,
              child: AutoSizeText(
                widget.title,
                maxLines: 3,
                softWrap: true,
                style: TextStyle(
                  color: const Color(0xFF494D60),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AutoSizeText(
                    widget.title2,
                    maxLines: isExpanded ? null : 2,
                    overflow:
                        isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: const Color(0xFF1A1B28),
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (showMoreButton)
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isExpanded = !isExpanded;
                        });
                      },
                      child: Text(
                        isExpanded ? 'less' : 'more',
                        style: const TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.w300,
                           fontSize: 12, 
                          
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class FeaturesTile extends StatefulWidget {
  final String label;

  const FeaturesTile({Key? key, required this.label}) : super(key: key);

  @override
  State<FeaturesTile> createState() => _FeaturesTileState();
}

class _FeaturesTileState extends State<FeaturesTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          Icons.circle,
          color: Color(0xFF494D60),
          size: 10,
        ),
        4.horizontalSpace,
        Expanded(
          child: AutoSizeText(
            widget.label,
            style: TextStyle(
              color: const Color(0xFF494D60),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    );
  }
}

class Headings extends StatefulWidget {
  final String title;
  const Headings({super.key, required this.title});

  @override
  State<Headings> createState() => _HeadingsState();
}

class _HeadingsState extends State<Headings> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Image.asset(
          'assets/images/edit-2.png',
          color: const Color(0xFF292D32),
          height: 24,
          width: 24,
        ),
      ],
    );
  }
}


