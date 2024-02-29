using SignInfLib
using Test

# You can add tests here
# Please make differents sections !
@testset "Entropy" begin
    # Letter frequency in french
    frequency = [0.0815, 0.0097, 0.0315, 0.0373, 0.1739, 0.0112, 0.0097, 0.0085, 0.0731, 0.0045, 0.0002, 0.0569, 0.0287, 0.0712, 0.0528, 0.028, 0.0121, 0.0664, 0.0814, 0.0722, 0.0638, 0.0164, 0.0003, 0.0041, 0.0028, 0.0015]
    data1 = [0.4, 0.3, 0.2, 0.1]
    data2 = [0.5, 0.5]
    data3 = SignInfLib.convertToProb2d([[686, 2870, 412, 2, 90, 3217, 965],[1347, 151, 1561, 591, 687, 588, 239],[3444, 827, 3009, 224, 222, 1632, 62],[1744, 452, 1569, 176, 614, 1102, 126],[4373, 2018, 1180, 113, 103, 5392, 1993],[3056, 173, 3020, 559, 881, 5395, 1195],[1337, 804, 1854, 75, 238, 3281, 646],[480, 265, 953, 77, 4, 3254, 1169],[2152, 611, 2117, 326, 502, 2712, 1396],[2651, 808, 1199, 182, 259, 1614, 234],[3512, 276, 1508, 782, 1054, 2715, 1197]])
    @test SignInfLib.getEntropy(frequency) == 3.99381318311237
    @test SignInfLib.getEntropy(data1) == 1.8464393446710154
    @test SignInfLib.getEntropy(data2) == 1.0
    @test SignInfLib.getConditionnalEntropy(data3, -1, 4) == 2.933398475452774
    @test SignInfLib.getConditionnalEntropy(data3, -1, 6) == 3.2474983728280318
    @test SignInfLib.getConditionnalEntropy(data3, 5, -1) == 2.207612589786564
    @test SignInfLib.getSharedEntropy(data3) == 0.19346289944435568
end

@testset "General" begin
    # Letter frequency in french
    test1 = [5,5]
    test2 = [4,4,2]
    test3 = [
        [5, 5],
        [5, 5]
    ]
    test4 = [
        [2, 2],
        [4, 4],
        [8, 8]
    ]
    res_1 = SignInfLib.convertToProb(test1)
    res_2 = SignInfLib.convertToProb(test2)
    res_3 = SignInfLib.convertToProb2d(test3)
    res_4 = SignInfLib.convertToProb2d(test4)
    @test res_1[1] == 0.5
    @test res_3[1][1] == 0.25
    @test res_4[1][1] == res_4[2][1] / 2
    @test res_4[1][1] == res_4[3][1] / 4
end
