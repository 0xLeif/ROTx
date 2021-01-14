# ROTx

*[ROT13](https://en.wikipedia.org/wiki/ROT13) with a shift*

```swift
"Hello, World!".rot13() // Uryyb, Jbeyq!

"Uryyb, Jbeyq!".rot13() // Hello, World!
```
## String+ROTx

### shifted

```swift
"abcdefghijklmnopqrstuvwxyz".shifted(by: 1) // bcdefghijklmnopqrstuvwxyza

"abcdefghijklmnopqrstuvwxyz".shifted(by: 0) // abcdefghijklmnopqrstuvwxyz

"abcdefghijklmnopqrstuvwxyz".shifted(by: -1) // zabcdefghijklmnopqrstuvwxy
```

### rot13

```swift
"abcdefghijklmnopqrstuvwxyz".rot13() // nopqrstuvwxyzabcdefghijklm

"nopqrstuvwxyzabcdefghijklm".rot13() // abcdefghijklmnopqrstuvwxyz
```
