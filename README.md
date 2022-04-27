## [![cover][]][pubdev]
[![flutter][]][web flutter] [![paypal][]][paypal account] <br>
A Flutter package to create easy animation scroll snap effect in ListView

---



```dart
  // Example itemSize
  // itemSize = child width (ex: 100) + child padding (ex: 16);
  // itemSize = 116
  ScrollSnapEffect(
      itemSize: 116,
      itemCount: 15,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      onChanged: (index) {
        debugPrint('$index');
      },
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(right: 16),
          child: SizedBox(
            height: 100,
            width: 100,
            child: ColoredBox(
              color: Colors.blue,
              child: Center(
                child: Text(
                  '$index',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    ),
```

---

### Example Scroll Snap Effect
[![output][]][output]

---

### 🚧 Maintener 
[![account avatar][]][github account] <br>
**Farhan Fadila**<br>
📫 How to reach me: farhan.fadila1717@gmail.com

### ❤️ Suport Maintener
[![paypal][]][paypal account] [![badge linktree][]][linktree account]

[cover]: https://github.com/farhanfadila1717/flutter_package/blob/master/display/scroll_snap_effect/scroll_snap_effect.png
[output]: https://github.com/farhanfadila1717/flutter_package/blob/master/display/scroll_snap_effect/scroll_snap_effect.gif
[flutter]: https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter
[web flutter]: https://flutter.dev
[paypal]: https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal
[paypal account]: https://www.paypal.me/farhanfadila1717
[account avatar]: https://avatars.githubusercontent.com/u/43161050?s=80
[github account]: https://github.com/farhanfadila1717
[badge linktree]: https://img.shields.io/badge/Linktree-farhanfadila-orange
[linktree account]: https://linktr.ee/farhanfadila
[github]: https://github.com/farhanfadila1717/card_loading
[pubdev]: https://pub.dev/packages/scroll_snap_effect
