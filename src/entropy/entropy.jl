
"""
getEntropy(data)
Calculate the Shannon entropy of an array of probabilities

The array passed in parameter should contains only the probability of an event of occuring

# Examples 
```julia-repl
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

"""
getEntropyGivenY(data)
Compute the entropy either for a row OR a column

Pass either the row number or the column number to choose on which orientation you want to compute it
"""
function getConditionnalEntropy(data, row=-1, column=-1)
    if row == -1
        ent = 0
        tot = 0
        for i in data
            tot += i[column]
        end
        for i in data
            prob = i[column] / tot
            ent -= prob * log(2, prob)
        end
        return ent
    end
    if column == -1
        ent = 0
        tot = sum(data[row])
        print(data[row])
        for i in data[row]
            prob = i / tot
            ent -= prob * log(2, prob)
        end
        return ent
    end
    
end

"""
getJoinedEntropy(data)

Return the joined entropy of two variable
Takes a probability matrice in entry
"""
function getJoinedEntropy(data)
    ent_tot = 0
    for i in data
        for j in i
            ent_tot -= j * log(2, j)
        end
    end
    return ent_tot
end
    

"""
getSharedEntropy(data)

Return the shared entropy between two variables
Takes a probability matrice in entry
"""
function getSharedEntropy(data)
    xProb = sum(data)
    yProb = []
    for i in data
        currentTot = 0
        for j in i
            currentTot += j
        end
        push!(yProb, currentTot)
    end
    x = getEntropy(xProb)
    y = getEntropy(yProb)
    joined = getJoinedEntropy(data)
    return x + y - joined
end