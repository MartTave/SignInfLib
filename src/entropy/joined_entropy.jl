

function getJoinedEntropy(data)
    ent_tot = 0
    for i in data
        for j in i
            ent_tot -= j * log2(j)
        end
    end
    return en_tot
end
    