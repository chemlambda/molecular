# Asemantic computing

[Marius Buliga](https://mbuliga.github.io/), based on the [first version](https://telegra.ph/Asemantic-computing-03-02), [archived](https://web.archive.org/web/20220902205810/https://telegra.ph/Asemantic-computing-03-02)


True distributed computing which also has a global meaning (semantic) is not possible. People still stubbornly try to do it in stupid ways. 
They are fond of semantics.

However Nature is a true distributed computation which does not have the kind of meaning sought by humans (and programmers in particular). 
As concerns the biological realm, all is chemistry. Therefore we can be sure that it is possible to have the most amazing distributed computing. 

What about asemantic computing?

Turing machines are asemantic. No matter what stack of programs you use to produce the initial string written on your tape, from that point on a 
TM works locally in time and space, without any need for global control or meaning.  
But a network of TM cannot work without a global component (hence semantics) because you have many heads writing on the same tape,
which lead to well known problems. As TM can be translated into headless TM, which they could be converted into graph rewrite systems, 
a network of TM can't be turned into a confluent graph rewrite system.

Lafont' Interaction Combinators is a graph rewriting system (a chemistry) which can be used for true distributed computing. 
Lafont proves that IC is Turing universal because it can implement any Turing machine. 

IC is confluent, meaning that of we have an IC graph which can be rewritten into one without any further possible rewrites, then this final 
state is unique (and therefore it can be attained no matter how we split and distribute the graph to the participants at the computation, nor 
does it matter which protocole use the participants to transfer pieces of graphs). Confluence does not say anything about graphs which don't 
have a final state. Confluence is undesirable for life like distributed computations, where final states are to be interpreted as death and 
they have to be recycled somehow by anoher mechanisms. Chemlambda is an alternative.

IC and chemlambda are good for true distributed computation only as long as they are not used for implementing a  sufficiently powerful term rewrite 
system, like lambda calculus. That is because it is not possible to have only local computations with a term rewrite system. This is simply because 
a term rewrite system is non-local by definition.

So if we want a true distributed computing system then we have to make it asemantic (because otherwise is not local), we have to use graph 
rewrite systems and not term rewrite systems (because term rewrite systems are non local) and the meaning we can extract from the system can 
be only local as well (therefore there is no point to try to extract from the system precise global measures of agreement, syncronization). 

In conclusion such a system is, as for now, unclear how to program it or how to use it (as long as we want to program it in the old ways and to use 
it for communication in the old ways). 

But we can try to use it as if it is a living ecosystem, an extension of the meatspace. For this we have to go even more extreme and to renounce 
at confluence.

Such a system would be certainly useful for protecting, evolving and sadly challenging the life on Earth. 

Since it is possible, it has to be tried, though. 
