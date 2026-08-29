# printArrayYN(_:judge:)
配列の各要素を条件式で判定し、YesまたはNoを出力します。
```Swift
func printArrayYN<Element>(
    _ l: [Element],
    judge: (Element) -> Bool
)
```
### Parameters
- `l`: 判定する要素を格納した配列
- `judge`: 配列の要素を受け取り、Bool型を返す関数
### Discussion
配列の各要素をjudgeに渡して判定します。
judgeがtrueを返した場合はYesを、falseを返した場合はNoを出力します。
```Swift
let nums = [1, 2, 3, 4]

printArrayYN(nums, judge: { $0 % 2 == 0 })

// No
// Yes
// No
// Yes
```
### See Also