include("joined_entropy.jl")
include("entropy.jl")
include("../general.jl")
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