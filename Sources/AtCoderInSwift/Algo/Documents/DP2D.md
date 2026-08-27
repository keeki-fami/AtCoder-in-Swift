# DP2D
A structure that supports declarative implementation of dynamic programming using a two-dimensional array.
### Discussion
`DP2D` makes it easier to implement dynamic programming declaratively by reducing boilerplate code.

```Swift
// DP using an n-by-2 two-dimensional array
// First argument: Number of rows
// Second argument: Number of columns
// Third argument: Integer used to initialize the array
DP2D(n, 2, 0)
    .loop(
        // The loop method takes the following three functions as arguments:
        // before: Performs preprocessing before manipulating the array.
        // body: Performs operations on the array.
        // complete: Performs an operation after the loop for each row completes
        //           (e.g., updating a variable that stores the answer).
    )
```
### Example
- [ABC464 D - Celester](https://atcoder.jp/contests/abc464/submissions/78157261)