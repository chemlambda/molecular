# Molecular computers with interaction combinators like graph rewriting systems

Marius Buliga [homepage 1](https://mbuliga.github.io/), [homepage 2](http://imar.ro/~mbuliga/index.html),  [arXiv](https://arxiv.org/a/buliga_m_1.html),  [figshare](https://figshare.com/authors/Marius_Buliga/475484)


## Problem

How to use real chemistry to build molecular computers which are based on graph rewriting systems like [chemlambda, chemSKI](https://chemlambda.github.io/index.html) or Interaction Combinators. 

This was first suggested in the article [Molecular computers](http://chorasimilarity.github.io/chemlambda-gui/dynamic/molecular.html), also  ([arXiv](https://arxiv.org/abs/1309.6914)) ([figshare](https://doi.org/10.6084/m9.figshare.7339103.v1)), where ackermann(2,2) is computed as an example. 

## Why 

In computer science and logic we use graph rewriting systems in relation to computation, lambda calculus, functional programming, etc. We now have a small list of interesting graph rewriting systems which allow universal computation. It is remarkable that some graph rewriting rules appear to be everywhere. 

Graph rewriting systems are a very promising direction for building decentralized computing systems, as well as for other programming, logical or mathematical subjects. 

Typically there is a 3 stages process which uses graph rewriting. We want to solve a problem, therefore we write a program.
- **meaning to structure:**  The program is then compiled to a graph.  This can also be seen as a language to structure problem. The language can be a term rewrite system, the program can be a term, the structure can be an abstract syntax tree. Many other examples exist, which can be put into the form of transforming something which has a meaning (for a human), to something which can be processed by a machine (in this case a graph).
-  **structure to structure:** transform the initial graph into a final graph, by using the graph rewriting system and an algorithm for the choice and order of application of the rewrites. Usually this problem is complicated because we want to have a good translation not only of the meaning to structure, but also of the term reduction into graph reduction. For example, when we write a program we expect it to "do" something, and we would like that the execution of the program by the machine (ie the structure to structure part) to be a translation of what we imagine the program is doing. As an example, if our program is a lambda term, which is compiled into a graph, we would like the graph rewriting to be compatible with the term rewriting, ie the beta reduction term rewriting rule. These semantic constraints which are put in the use of graph rewriting are incompatible with decentralized computing, see [Asemantic computing](https://telegra.ph/Asemantic-computing-03-02)   
-   **structure to meaning:** transform the final graph into the language, in order to obtain the answer of the problem. For example, if the initial program was a lambda term, we compile it into a graph, then we reduce the graph, then we translate back the final graph into a lambda term. In other examples we just want to translate the final graph into something which has a meaning for us, into the solution of the problem.

In all such applications of graph rewriting, **we position at the level of meaning**, we descend at the level of structure, where we use graph rewriting as a tool and then we translate back the result into a meaningful output. 

However, in this project we have a different goal. **We are interested mainly in the structure to structure level**. 

Here is a different 3 stages process, where we put the accent on the structure to structure level. As an example, we want to have a chemical molecule which can be absorbed by a living cell. We want that, once inside the living cell, the molecule is processed and produces a nano-machine (by making parts which self assemble, or by other means), all by itself and outside our control. For this kind of problem the 3 steps are: 
- **meaning to structure:** create the initial molecule, from a high level, language specification. For example say that the input molecule will be a piece of rna, created in a lab. 
- **structure to structure:** in the cell, the initial molecule enters in random reactions with other molecules and leads to another structure. For example the molecule is chemically copied and then translated into proteins which self-assemble into the goal nano-machine. We have no control over this step and there is no meaning (semantics) to be satisfied by this random process. 
- **structure to meaning:** the presence of these nano-machines in the cell produce an effect which we can observe. 

The differences are striking: 
- we want to produce a structure which, left alone, induces the creation of another structure, 
- the level of meaning (where we design the initial structure in order to be able to obtain the final structure) is a tool which serves the structure to structure goal,
- there is no control of the algorithm of applications of graph rewrites, it is given by the nature.

 

**Therefore we want:** 
- to build a molecular computer in the sense of “[one molecule which transforms, by random chemical reactions mediated by a collection of enzymes, into a predictable other molecule, such that the output molecule can be conceived as the result of a computation encoded in the initial molecule.](https://zenodo.org/record/16018)”
- to use what we know about graph rewriting in computer science to inspire us to do this structure to structure chemical computation. 

## Interesting graph rewriting systems to use, theoretical bibliography

Part of the [chemlambda project](https://chemlambda.github.io/index.html), which contains links to repositories and articles which are relevant.

 This was suggested in the article [Molecular computers](http://chorasimilarity.github.io/chemlambda-gui/dynamic/molecular.html) [arXiv](https://arxiv.org/abs/1309.6914) [figshare](https://doi.org/10.6084/m9.figshare.7339103.v1) , where ackermann(2,2) is computed as an example. 
 
 [Chemlambda for the people](https://chorasimilarity.github.io/chemlambda-gui/dynamic/cfp.html) is a presentation with examples, for a general audience.
 
 It is very interesting how Lafont proved the Turing universality of his [Interaction Combinators](https://github.com/chemlambda/molecular/blob/main/reading/Lafont-Interaction-Combinators.pdf).  First he introduces interaction systems, which are based on a general form of the patterns involved in the graph rewrites. Interaction systems are therefore at the level of structure to structure.  Then he shows that Turing machines can be seen as particular interaction systems. Finally, the bulk of the article is dedicated to the proof that Interaction Combinators are universal in the sense that any interaction system can be translated into Interaction Combinators.  Turing universality is therefore a corollary, because in particular the interaction systems which model Turing machines can be done with Interaction Combinators.
 
 I would name this property "Lafont universality", or "graph rewriting universality". For confluent graph rewriting systems, like interaction systems, Lafont universality is equivalent with Turing universality, because conversely there is a clear algorithm for graph rewriting for interaction systems. But it is very interesting and inspiring that Lafont universality is a pure graph rewriting property. 

## What is new here

That we concentrate on the implementation in chemistry of a very few, selected, graph rewrite systems, which are related (but do not reduce to) lambda calculus. 

The hypothesis is that life at molecular level is based on some version of these rewrites, as explained in [Alife properties of directed interaction combinators vs. chemlambda](https://mbuliga.github.io/quinegraphs/ic-vs-chem.html#icvschem) or [arXiv:2005.06060](https://arxiv.org/abs/2005.06060). 

The connection with lambda calculus does not bind us to the constraints related to semantics. We use lambda calculus as inspiration for mechanisms of structure to structure production. 


The connection with graph rewriting suggests a different "theory of everything", namely that the universe is not a huge dynamical graph. Instead, it is a loose collection of small graphs which interact via local graph rewriting. A correct TOE would be one where we can explain the behaviour of one such small graph which interacts with the rest of the universe only via random, local in space and time rewrites. 





## Let's set the following goal

Compute ackermann(2.2) or ackermann(2,3) with this system. Or why not ackermann(3,2)? or ackermann(4,4) to see what an [ackermann goo](https://chemlambda.github.io/collection.html#59) looks like, macroscopically.

Once you can build one, you can build all. 

The reason for this goal is that if we look at a hypothetical molecule which computes ackermann(2,2), it passes by about 40 rewrites (chemical reactions). Therefore it is a good tool to verify that the translation to real chemistry does work. 

Also, the final molecule is just a ring, which might be easier to observe in a real experiment. 

From the pure computation side, the Ackermann function is non primitively recursive, therefore it is interesting to chemically compute it. 

But otherwise, this would be only a benchmark for our molecular computers proposal. 




(this version 28.07.2022)
