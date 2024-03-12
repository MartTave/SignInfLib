

function zipEncode(src)
    found = [
        ""
    ]
    res = []
    currSeq = ""
    lastFoundSeq = 0
    for c in src
        currSeq = currSeq*c
        if currSeq in found
            lastFoundSeq = findfirst(==(currSeq), found) - 1
            continue
        else
            # Not in seq -> we need to add it !
            push!(found, currSeq)
            push!(res, string(lastFoundSeq) * last(currSeq))
            currSeq = ""
        end
    end
    println(found)
    return join(res)
end

function zipDecode(encoded)
    if length(encoded) % 2 != 0
        println("Length of encoded message should be pair !!")
        return
    end
    dict = []
    decoded = ""
    halvedLength = floor(Int64, length(encoded) / 2)
    println(halvedLength)
    for i in 1:halvedLength
        curr = encoded[i * 2 - 1:i*2]
        index = parse(Int64, curr[1])
        added = curr[2]
        if index != 0
            push!(dict, dict[index] * added)
            decoded = decoded * last(dict)
        else
            push!(dict, added)
            decoded = decoded * added
        end
    end
    return decoded
end