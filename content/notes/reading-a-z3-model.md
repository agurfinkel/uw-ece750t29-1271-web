---
title: "Example note: reading a Z3 model"
date: 2026-10-23
draft: true
tags: [smt, example]
math: true
---

*This is a sample note showing what a post looks like: prose, code, and math. It is marked `draft: true`, so it appears in `hugo server -D` previews but not in the published site.*

To check that a claim holds for all inputs, we ask the solver whether its negation is satisfiable. Suppose a loop is meant to keep \(x \le n\), and we want to know whether one step can break that:

```smt2
(declare-const x Int)
(declare-const n Int)
(assert (<= x n))              ; invariant holds before the step
(assert (not (<= (+ x 1) n)))  ; ...but fails after x := x + 1
(check-sat)
(get-model)
```

Z3 answers `sat` and gives a model such as \(x = 0,\ n = 0\). The model is a concrete counterexample to the *step*: the candidate invariant is not inductive without a guard. Adding the loop condition \(x < n\) as an assumption makes the query `unsat`, which is exactly the preservation obligation

$$
x \le n \;\wedge\; x < n \;\Rightarrow\; x + 1 \le n .
$$

The same step in Rust, as a Verus loop:

```rust
fn count(n: u64) -> (r: u64)
    ensures r == n,
{
    let mut x: u64 = 0;
    while x < n
        invariant x <= n,
    {
        x = x + 1;
    }
    x
}
```
