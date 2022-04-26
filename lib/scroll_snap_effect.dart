import 'package:flutter/material.dart';

class ScrollSnapEffect extends StatefulWidget {
  const ScrollSnapEffect({
    Key? key,
    required this.itemSize,
    required this.itemCount,
    required this.itemBuilder,
    this.physics,
    this.padding,
    this.clipBehavior = Clip.hardEdge,
    this.onChanged,
    this.curve,
    this.duration,
  }) : super(key: key);

  final double itemSize;
  final int itemCount;
  final IndexedWidgetBuilder itemBuilder;
  final ScrollPhysics? physics;
  final EdgeInsetsGeometry? padding;
  final Clip clipBehavior;
  final ValueChanged<int>? onChanged;
  final Curve? curve;
  final Duration? duration;

  @override
  State<ScrollSnapEffect> createState() => _ScrollSnapEffectState();
}

class _ScrollSnapEffectState extends State<ScrollSnapEffect> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    super.initState();
  }

  bool onNotification(
    ScrollNotification? scrollNotification,
  ) {
    if (scrollNotification == null) {
      return false;
    }

    if (scrollNotification is ScrollEndNotification) {
      if (scrollNotification.metrics.axis == Axis.horizontal) {
        final offset = _controller.offset;
        correctIndex(offset);
        return true;
      }
    }
    return false;
  }

  void correctIndex(
    double offset,
  ) {
    int index = offset ~/ widget.itemSize;
    final modIndex = offset % widget.itemSize;
    final halfWidth = widget.itemSize / 2;
    final maxOffset = _controller.position.maxScrollExtent;
    if (modIndex > halfWidth && index != widget.itemCount - 1) {
      index += 1;
    }
    final itemIndexOffet = widget.itemSize * index;
    if (itemIndexOffet != offset && offset != maxOffset) {
      Future.delayed(const Duration(milliseconds: 100), () {
        correctScrollOffset(index, itemIndexOffet);
      });
    }
  }

  void correctScrollOffset(
    int index,
    double offset,
  ) async {
    await _controller.animateTo(
      offset,
      duration: widget.duration ?? const Duration(milliseconds: 200),
      curve: widget.curve ?? Curves.fastOutSlowIn,
    );
    if (widget.onChanged != null) {
      widget.onChanged!(index);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: onNotification,
      child: ListView.builder(
        controller: _controller,
        scrollDirection: Axis.horizontal,
        physics: widget.physics,
        padding: widget.padding,
        itemCount: widget.itemCount,
        itemBuilder: widget.itemBuilder,
        clipBehavior: widget.clipBehavior,
      ),
    );
  }
}
