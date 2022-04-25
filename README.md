## Scroll Snap Effect
[![flutter][]][web flutter] [![paypal][]][paypal account] <br>
A Flutter package to create easy scroll snap effect 

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

### 🚧 Maintener 
[![account avatar][]][github account] <br>
**Farhan Fadila**<br>
📫 How to reach me: farhan.fadila1717@gmail.com

### ❤️ Suport Maintener
[![paypal][]][paypal account] [![badge linktree][]][linktree account]

[flutter]: https://img.shields.io/badge/Platform-Flutter-02569B?logo=flutter
[web flutter]: https://flutter.dev
[paypal]: https://img.shields.io/badge/Donate-PayPal-00457C?logo=paypal
[paypal account]: https://www.paypal.me/farhanfadila1717
[account avatar]: https://avatars.githubusercontent.com/u/43161050?s=80
[github account]: https://github.com/farhanfadila1717
[badge linktree]: https://img.shields.io/badge/Linktree-farhanfadila-orange
[linktree account]: https://linktr.ee/farhanfadila
[github]: https://github.com/farhanfadila1717/card_loading
