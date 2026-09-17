# PrefixSum
累積和を計算する構造体
### Discussion
配列の区間和を高速に取得するための累積和を扱う構造体です。
以下のように求めることができます。
```Swift
let a = [1,4,5,9,0,-2,1]
let prefixSum = PrefixSum(a)
```
区間の和は、インデックスを用いて取得することができます。$`[i, j)`$ の区間の和を求めたい場合は、`prefixSum[i, j]`としてください。
```Swift
let num = prefixSum[0, 3] // 10
```
上記の場合、`a[0] + a[1] + a[2]`の値を求めることができます。
```Swift
let ans1 = prefixSum[1, 4] // 18
let ans2 = prefixSum[4, 6] // -2
```
### Examples