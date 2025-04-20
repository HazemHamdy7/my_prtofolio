import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:my_prtofolio/features/experienes/widget/experence_item.dart';
import 'package:my_prtofolio/helper/extensions.dart';

const expLen = 6;
const expPointsSize = 16.0;
const expScaleFactor = 150.0;
const expPonitFactor = 230 / 2 - expPointsSize / 2;

class DesktopExperienesBody extends StatelessWidget {
  const DesktopExperienesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: expLen * expScaleFactor + expScaleFactor,
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 3,
              height: expLen * expScaleFactor + expScaleFactor,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    context.colorScheme.primary.withOpacity(0),
                    context.colorScheme.primary,
                    context.colorScheme.primary.withOpacity(0),
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          for (int i = 0; i < expLen; i++) ...[
            if (i.isEven)
              Positioned(
                top: i * 150,
                right: 400,
                left: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // first item  ExperenceItem before the SizedBox
                    ExperenceItem(),
                    SizedBox(
                      width: 100,
                      child: DottedLine(dashColor: context.colorScheme.primary),
                    ),
                  ],
                ),
              )
            else
              Positioned(
                top: i * 150,
                left: 400,
                right: 0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 100,
                      child: DottedLine(dashColor: context.colorScheme.primary),
                    ),
                    // second item ExperenceItem after the SizedBox
                    ExperenceItem(),
                  ],
                ),
              ),
            Positioned(
              top: i * expScaleFactor + expPonitFactor,
              left: 0,
              right: 0,
              child: Container(
                alignment: Alignment.center,
                width: expPointsSize,
                height: expPointsSize,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colorScheme.onBackground.withOpacity(0.24),
                ),
                child: Container(
                  width: expPointsSize / 2,
                  height: expPointsSize / 2,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colorScheme.onBackground.withOpacity(0.8),
                  ),
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
