function getEntropy(data)
    ent_tot = 0
    for i in data
        # Formula is log2(1 / p(x)) * p(x)
        ent_tot += log(2, 1 / i) * i
    end
    return ent_tot
end