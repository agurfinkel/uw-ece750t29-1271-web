---
title: Schedule
weight: 2
---

Slides are posted after each lecture. Each lecture has one primary reading; read it before class. Topic order and readings may be adjusted during the term.

<!-- To post slides: put the PDF in static/lectures/ and replace "posted after the lecture"
     with a link, e.g. [Slides](/lectures/01-verification-claims.pdf). -->

## Week 1 · What does it mean to verify? {#week-1}

**Lecture 1 · Verification claims, experience, and AI**
- Slides: posted after the lecture
- Reading: [Verifying Verified Code](https://arxiv.org/abs/2107.00723)

**Lecture 2 · A verification session in SeaHorn**
- Slides: posted after the lecture
- Reading: [The SeaHorn Verification Framework](https://seahorn.github.io/papers/cav15.pdf)

## Week 2 · Deductive verification with Verus {#week-2}

**Lecture 3 · Rust contracts and inductive invariants**
- Slides: posted after the lecture
- Reading: [Verus: Verifying Rust Programs using Linear Ghost Types](https://arxiv.org/abs/2303.05491); [Verus guide](https://verus-lang.github.io/verus/guide/) as reference

**Lecture 4 · When a proof becomes difficult; working with an agent**
- Slides: posted after the lecture
- Reading: [Code-level model checking in the software development workflow at AWS](https://onlinelibrary.wiley.com/doi/10.1002/spe.2949)

## Week 3 · What happens inside an SMT query? {#week-3}

**Lecture 5 · Programming and understanding an SMT solver**
- Slides: posted after the lecture
- Reading: [Programming Z3](https://z3prover.github.io/papers/programmingz3.html), interface material and CDCL(T)

**Lecture 6 · EUF and congruence closure**
- Slides: posted after the lecture
- Reading: [Programming Z3](https://z3prover.github.io/papers/programmingz3.html), EUF section

## Week 4 · Verification conditions {#week-4}

**Lecture 7 · Simplify the program until VCGen is simple**
- Slides: posted after the lecture
- Reading: [Bounded Model Checking for LLVM (SeaBMC)](https://repositum.tuwien.at/handle/20.500.12708/81355), VCGen material

**Lecture 8 · Encodings, solver results, and reduction choices**
- Slides: posted after the lecture
- Reading: TinyTAC/VCGen notes, posted with the slides

## Week 5 · Memory and ownership {#week-5}

**Lecture 9 · Raw memory, safety, and analysis information**
- Slides: posted after the lecture
- Reading: [Bounded Model Checking for LLVM (SeaBMC)](https://repositum.tuwien.at/handle/20.500.12708/81355), memory sections

**Lecture 10 · Ownership and prophecy**
- Slides: posted after the lecture
- Reading: [RustHorn: CHC-based Verification for Rust Programs](https://arxiv.org/abs/2002.09002)
- Complement: [Ownership in low-level intermediate representation](https://arxiv.org/abs/2408.04043)

## Week 6 · Automatic invariant discovery {#week-6}

**Lecture 11 · Abstract interpretation as invariant discovery**
- Slides: posted after the lecture
- Reading: [PREVAIL: Simple and Precise Static Analysis of Untrusted Linux Kernel Extensions](https://ryzhyk.net/publications/prevail_pldi19.pdf)
- Background: [Miné, Tutorial on Static Inference of Numeric Invariants by Abstract Interpretation](https://perso.lip6.fr/Antoine.Mine/publi/article-mine-FTiPL17.pdf), introductory portions

**Lecture 12 · Understanding an inferred proof and a false alarm**
- Slides: posted after the lecture
- Reading: [A Flow-Sensitive Refinement Type System for Verifying eBPF Programs](https://jorgenavas.github.io/papers/types-ebpf-oopsla-2025.pdf)

## Week 7 · Horn clauses and induction {#week-7}

**Lecture 13 · CHCs as a verification interface**
- Slides: posted after the lecture
- Reading: [Program Verification with Constrained Horn Clauses](https://link.springer.com/chapter/10.1007/978-3-031-13185-1_2)

**Lecture 14 · IC3/PDR: trying to block a bad state**
- Slides: posted after the lecture
- Reading: [Understanding IC3](https://theory.stanford.edu/~arbrad/papers/Understanding_IC3.pdf)

## Week 8 · Property-directed reasoning {#week-8}

**Lecture 15 · Generalization, propagation, and convergence**
- Slides: posted after the lecture
- Reading: [IC3, PDR, and Friends](https://arieg.bitbucket.io/pdf/gurfinkel_ssft15.pdf)

**Lecture 16 · Spacer and the effect of the encoding**
- Slides: posted after the lecture
- Reading: [SMT-Based Model Checking for Recursive Programs](https://www.cs.cmu.edu/~akomurav/publications/spacer2.pdf)
- Notebook: [Spacer on Jupyter](https://github.com/agurfinkel/spacer-on-jupyter/blob/master/FSU_2023.ipynb)

## Week 9 · Proof assistants with AI agents {#week-9}

**Lecture 17 · Enough Lean to inspect a formalization**
- Slides: posted after the lecture
- Reading: [Theorem Proving in Lean 4](https://docs.lean-lang.org/theorem_proving_in_lean4/), selected sections

**Lecture 18 · Software models and agent-assisted proofs**
- Slides: posted after the lecture
- Reading: [Functional Programming in Lean](https://docs.lean-lang.org/functional_programming_in_lean/), selected passages on monads

## Week 10 · From Rust to functional proofs {#week-10}

**Lecture 19 · Functional translation and backward functions**
- Slides: posted after the lecture
- Reading: [Aeneas: Rust Verification by Functional Translation](https://arxiv.org/abs/2206.07185)

**Lecture 20 · Verifying translated software with agents**
- Slides: posted after the lecture
- Reading: [Scaling Verification of Cryptographic Software with Aeneas, Rust, and Lean](https://arxiv.org/html/2609.15648v1)

## Week 11 · Checking verification tools {#week-11}

**Lecture 21 · Product programs and equivalence checking**
- Slides: posted after the lecture
- Reading: [Relational Verification Using Product Programs](https://software.imdea.org/~jmcrespo/docs/FM2011.pdf)

**Lecture 22 · CTAC: assessing an agent-built verifier**
- Slides: posted after the lecture
- Reading: CTAC notes, posted with the slides

## Week 12 · Student investigations {#week-12}

Project presentations.
