

function convertToProb(data)
    tot = 0
    res = []
    for i in data
        tot += i
    end
    for i in data
        push!(res, i / tot)
    end
    return res
end

function convertToProb2d(data)
    tot = 0
    res = []
    for i in data
        for j in i
            tot += j
        end
    end
    for i in data
        push!(res, [])
        for j in i
            push!(res[-1], j / tot)
        end
    end
end