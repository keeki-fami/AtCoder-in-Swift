# getStringArray()
文字列の配列の入力を受け取る。
### Discussion
一行に並ぶ文字列型の要素を配列として取得します。
以下のような入力例を考えます。
```
aaa bbb ccc
```
これに対して、以下のように使用します。
```Swift
let a = getStringArray()
print(a) // ["aaa", "bbb", "ccc"]
```
### See Also