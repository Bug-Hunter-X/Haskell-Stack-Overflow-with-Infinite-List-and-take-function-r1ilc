The solution involves ensuring that the potentially infinite list is only partially evaluated.  Instead of creating the infinite list with `repeat 1` and then taking 5 elements with `take 5`, we should construct only the 5 elements from the start:

```haskell
main :: IO ()
main = do
  let firstFive = take 5 $ repeat 1
  print firstFive -- Output: [1,1,1,1,1]
```
This approach prevents the stack overflow by limiting the computation to a finite number of elements.