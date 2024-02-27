
"""
getEntropy(data)
Calculate the Shannon entropy of an array of probabilities

The array passed in parameter should contains only the probability of an event of occuring

# Examples 
```y
julia> getEntropy([0.5, 0.5])
1.0
```
"""
function getEntropy(data)
    ent_tot = 0
    for i in data
        # Formula is log2(p(i)) * p(i)
        ent_tot += log(2, i) * i
    end
    return -ent_tot
end