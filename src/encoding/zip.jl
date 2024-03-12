

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
    return join(res)
end

function zipDecode(encoded)
    dict = []
    decoded = ""
    halvedLength = floor(Int64, length(encoded) / 2)
    println(halvedLength)
    done = false
    currIndex = 1
    indexLength = 1
    while !done
        curr = encoded[currIndex: currIndex + indexLength]
        index = parse(Int64, first(curr, indexLength))
        if index != 0
            decSymb = dict[index] * last(curr)
            if decSymb in dict
                # If it's already in dict -> means we need to take 1 digit more for index
                indexLength += 1
                continue
            else
                # Then it's a new symbol -> we can add it to the dict
                push!(dict, decSymb)
                decoded = decoded * decSymb
                currIndex += indexLength + 1
                indexLength = 1
            end
        else
            # It means it has no start in dict -> we can directly add it to the dict
            push!(dict, last(curr))
            decoded = decoded * last(curr)
            currIndex += indexLength + 1
            indexLength = 1
        end
        println(currIndex, " ", length(encoded))
        if currIndex >= length(encoded)
            done = true
        end
    end
    return decoded
end