### Question 1

_Why is client diversity important for Ethereum?_

### Answer

bugs - resilience to protocol exploits

### Question 2

_Where is the full Ethereum state held?_

### Answer

full node - Patricia Merkle Tree

### Question 3

_What is a replay attack?, which 2 pieces of information can prevent it?_

### Answer

nonce - chain id

### Question 4

_In a contract, how do we know who called a view function ?_

### Answer

We can't know who called a "view" function.
A "view" function is typically called off-chain, no concept of `msg.sender`.
Exception when the "view" function is called inside a "non-view" function.