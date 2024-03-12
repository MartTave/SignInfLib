# SignInfLib

A library that should contains everthing you need to complete the SignInf course

## Installation

```julia
using Pkg
Pkg.add(url="https://github.com/MartTave/SignInfLib")
# You can now use the lib in any files
using SignInfLib
```

## Update

```julia
using Pkg
Pkg.update("SignInfLib")
# The lib will now update
# As there will be many modifications to this lib -> You might want to create a julia script to make the update easier
```

## Functions

### convertToProb

This function transform the given occurence array into a probability array

```julia
using SignInfLib
SignInfLib.convertToProb([5, 5])
# Returns [0.5, 0.5]
SignInfLib.convertToProb([5, 5, 10, 10, 10])
# Returns [0.125, 0.125, 0.25, 0.25, 0.25]
```

### convertToProb2d

This function convert a 2d array of occurences into a probability 2d array

```julia
using SignInfLib
arr1 = [
    [5, 5],
    [5, 5]
]
SignInfLib.convertToProb2d(arr)
# Returns [0.5, 0.5]
SignInfLib.convertToProb([5, 5, 10, 10, 10])
# Returns [0.125, 0.125, 0.25, 0.25, 0.25]
```

### getEntropy

This function returns the entropy of an array of probabilities

```julia
using SignInfLib
SignInfLib.getEntropy([0.5, 0.5])
# Returns 1.0
```

### getConditionnalEntropy

This function get the conditionnal entropy from an matrice of probabilities

```julia
using SignInfLib
mat = [

]
SignInfLib.getEntropy([0.5, 0.5])
# Returns 1.0
```
