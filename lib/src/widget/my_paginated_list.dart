import 'package:flutter/material.dart';

import '../resource/resource.dart';

class MyPaginatedList extends StatelessWidget {
  const MyPaginatedList({
    required this.loading,
    required this.page,
    required this.length,
    required this.itemBuilder,
    required this.onNext,
    required this.onRefresh,
    required this.errorMsg,
    super.key,
    this.height,
    this.padding,
    this.emptyPlaceHolder,
    this.dividerColor,
    this.scrollDirection = Axis.vertical,
    this.separator,
    this.loadingPlaceholder,
    this.scrollController,
    this.physics,
    this.shrinkWrap = false,
  });

  final bool loading;
  final int page;
  final String errorMsg;
  final int length;
  final Widget? emptyPlaceHolder;
  final Future<void> Function() onRefresh;
  final Widget Function(BuildContext c, int i) itemBuilder;
  final double? height;
  final EdgeInsets? padding;
  final void Function() onNext;
  final Color? dividerColor;
  final Axis scrollDirection;
  final Widget? separator;
  final Widget? loadingPlaceholder;
  final ScrollController? scrollController;
  final ScrollPhysics? physics;
  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    if (loading && page == 1) {
      return loadingPlaceholder ??
          const Center(child: CircularProgressIndicator(color: Colors.blue));
    }
    if (errorMsg.isNotEmpty && page == 1) {
      return Center(
        child: Padding(
          padding: MyDimen.pad(all: 16.w),
          child: TextMessage(text: errorMsg),
        ),
      );
    }
    if (length == 0) {
      return Center(
        child: emptyPlaceHolder ?? const TextMessage(text: 'No Data Found'),
      );
    }
    return Stack(
      children: [
        NotificationListener(
          /// Refresh indicator is supposed to be within Stack to make it work
          /// for both iOS and Android
          child: RefreshIndicator(
            onRefresh: onRefresh, // must return async
            child: ListView.separated(
              shrinkWrap: shrinkWrap,
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
              physics: physics,
              controller: scrollController,
              scrollDirection: scrollDirection,
              padding: padding ?? MyDimen.pad(all: 16.w),
              itemCount: length,
              separatorBuilder: (c, i) =>
                  separator ??
                  Divider(
                    height: height,
                    color: dividerColor,
                  ),
              itemBuilder: itemBuilder,
            ),
          ),
          onNotification: (ScrollUpdateNotification scrollInfo) {
            if (scrollInfo.metrics.pixels ==
                scrollInfo.metrics.maxScrollExtent) {
              onNext();
            }
            return true;
          },
        ),
        if (loading && page > 1)
          Positioned(
            bottom: 16.w,
            left: 0.w,
            right: 0.w,
            child: const LinearProgressIndicator(color: MyColor.blue),
          ),
      ],
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: MyDimen.pad(all: 16.w),
        child: Text(
          text,
          style: MyFontStyle.medium14,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
