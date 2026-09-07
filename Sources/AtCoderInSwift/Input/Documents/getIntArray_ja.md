# getIntArray()
数値型の配列の入力を受け取る。
### Discussion
一行に並ぶ数値型の要素を配列として取得します。
以下のような入力例を考えます。
```
1 2 3 4 5
11,12,13,14,15
```
これに対して、以下のように使用します。
```Swift
let a = getIntArray()
let b = getIntArray()
print(a) // [1, 2, 3, 4, 5]
print(b) // [11, 12, 13, 14, 15]
```
### See Also