# Haskell Stack Overflow Bug

This repository demonstrates a common Haskell error involving infinite lists and lazy evaluation. The `bug.hs` file contains code that leads to a stack overflow, while `bugSolution.hs` provides a corrected version.

**Problem:**  The original code uses `repeat 1` to create an infinite list of ones.  While `take 5` attempts to limit this to the first five elements, the entire infinite list is still evaluated leading to a stack overflow. This is because Haskell's lazy evaluation only delays evaluation, not prevents it. 

**Solution:** The solution utilizes `take 5` *before* creating the potentially infinite list. This ensures only a finite amount of memory is used.