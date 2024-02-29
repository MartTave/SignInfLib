
function getEntropyGivenY(data, row)
    ent = 0
    tot = sum(data[row])
    print(data[row])
    for i in data[row]
        prob = i / tot
        ent -= prob * log(2, prob)
    end
    return ent
end

function getEntropyGivenX(data, column)
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

println(getEntropyGivenY(data, 5))