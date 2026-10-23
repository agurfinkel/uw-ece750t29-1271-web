---
title: Syllabus
weight: 1
---

**ECE 750 T29 · Automated Verification: Building Reliable Software in the Age of AI**\
Graduate course, Winter 2027 · Instructor: Arie Gurfinkel, Electrical and Computer Engineering

The full syllabus is available as a [PDF](/syllabus.pdf). This page summarizes it; the week-by-week topics are on the [schedule](/schedule/).

## Why verification matters now

AI accelerates software development, increasing the need to establish that software behaves as intended. It also helps discover and exploit weaknesses in existing systems. OpenAI's reports of [agents escaping sandboxes](https://openai.com/index/safety-alignment-long-horizon-models/) and [compromising external systems](https://openai.com/index/hugging-face-incident-and-the-road-ahead/) illustrate how software flaws and gaps in isolation can undermine intended protections. Formal reasoning provides ways to specify these protections, find violations, and establish guarantees under explicit assumptions.

AI also makes verification more accessible by helping construct specifications, models, and proofs. This course develops the judgment to guide that process and assess its results, together with the automated reasoning foundations behind the tools. We move from practical verification tasks to logical encodings, solver algorithms, memory and ownership, and invariant discovery. Later topics connect proof assistants with AI-assisted software and verifier development. Examples connect these methods to software libraries, systems code, and compiler transformations, with projects offering further applications in students' research areas.

## What you will learn

1. Formulate useful correctness claims and assess their assumptions, scope, and adequacy.
2. Use verification tools and guide AI agents in selecting models, specifications, and proof strategies.
3. Explain how verification conditions, memory representations, and solver algorithms influence results and performance.
4. Interpret counterexamples, inferred invariants, and formal proofs; distinguish bounded evidence from inductive guarantees.
5. Carry out and communicate a focused investigation of a verification problem or technique.

## Learning format and preparation

Lectures develop the core concepts through worked examples, tool demonstrations, and discussion. Research papers and tutorials accompany the lectures, typically one primary reading per meeting. Projects give students room to explore advanced topics in depth.

Students should be comfortable with programming and mathematical reasoning. Examples use C and Rust; students unfamiliar with Rust are expected to learn it independently. No prior experience with verification tools or Lean is required.

## Assessment

| Weight | Component | Description |
|---:|---|---|
| **20%** | Two short assignments | Practical verification and interpretation; 10% each. |
| **15%** | Technical presentation | A focused topic or investigation supporting the project. |
| **55%** | Project and final report | Substantive investigation, evidence, and critical analysis. |
| **10%** | Reading and participation | Preparation and substantive engagement with course material. |

## Applications and tools

Representative applications include data-structure correctness, memory and resource safety in systems code, and correctness of program transformations. Each illustrates how the specification, program model, and reasoning method shape the guarantee.

Tools may include CBMC, Kani, or SeaHorn for bounded checking; Verus and Z3/Spacer for SMT-based verification; and Lean-based workflows such as Aeneas. The selection may evolve with availability and suitability for the exercises.

## Projects and AI assistance

Projects may apply a method, reproduce or compare results, examine a verification claim, or extend a technique. Possible directions include distributed protocols and concurrent software. The final report develops the investigation beyond the presentation; original research is welcome but not required.

AI assistance is part of the course. Students remain responsible for understanding, explaining, and validating submitted work, including its specifications and assumptions. Assignment instructions will state collaboration and AI attribution requirements.
