# SignInfLib
 
A library that should contains everthing you need to complete the SignInf course

## Installation

```julia
using Pkg
Pkg.add("https://github.com/MartTave/SignInfLib")
# You can now use the lib in any files
using SignInfLib
```

## Functions

### getEntropy

This function returns the entropy of an array of probabilities

```julia
using SignInfLib
SignInfLib.getEntropy([0.5, 0.5])
# Returns 1.0
```
