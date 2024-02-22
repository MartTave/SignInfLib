# SignInfLib
 
A library that should contains everthing you need to complete the SignInf course

## Installation

```julia-repl
julia> using Pkg;Pkg.add("https://github.com/MartTave/SignInfLib")
```

## Functions

### getEntropy

This function returns the entropy of an array of probabilities

```julia-repl
julia> using SignInfLib
julia> SignInfLib.getEntropy([0.5, 0.5])
1.0
```
