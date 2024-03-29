import 'package:animations/animations.dart';
import 'package:flutter/material.dart';

import '../../common_widgets/common_widgets.dart';

extension AnimationExtension on Widget {
  AnimatedSize animatedSize({Duration? duration}) => AnimatedSize(
        duration: duration ?? const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        child: this,
      );
  AnimatedScale animatedScale(double scale, {Duration? duration}) =>
      AnimatedScale(
        duration: duration ?? const Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        scale: scale,
        child: this,
      );
  BouncyAnimationWidget animatedScaleOnTap(
          {Function()? onTap,
          Duration? duration,
          double? scaleOnTap,
          bool? useInkwell}) =>
      BouncyAnimationWidget(
          duration: duration,
          scaleOnTap: scaleOnTap,
          useInkwell: useInkwell,
          onTap: onTap,
          child: this);
  AnimatedRotation animatedRotation(double turns, {Duration? duration}) =>
      AnimatedRotation(
        turns: turns,
        duration: duration ?? const Duration(milliseconds: 300),
        child: this,
      );
  AnimatedSwitcher animatedSwitcher({Duration? duration}) => AnimatedSwitcher(
      duration: duration ?? const Duration(milliseconds: 300), child: this);
  PageTransitionSwitcher pageTransitionSwitcher({Duration? duration}) =>
      PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) =>
            FadeThroughTransition(
          animation: primaryAnimation,
          secondaryAnimation: secondaryAnimation,
          fillColor: Colors.transparent,
          child: this,
        ),
        duration: duration ?? const Duration(milliseconds: 300),
        child: this,
      );
}
