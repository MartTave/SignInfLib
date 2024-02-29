using SignInfLib
using Test

# You can add tests here
# Please make differents sections !
@testset "Entropy" begin
    # Letter frequency in french
    frequency = [0.0815, 0.0097, 0.0315, 0.0373, 0.1739, 0.0112, 0.0097, 0.0085, 0.0731, 0.0045, 0.0002, 0.0569, 0.0287, 0.0712, 0.0528, 0.028, 0.0121, 0.0664, 0.0814, 0.0722, 0.0638, 0.0164, 0.0003, 0.0041, 0.0028, 0.0015]
    data1 = [0.4, 0.3, 0.2, 0.1]
    data2 = [0.5, 0.5]
    @test SignInfLib.getEntropy(frequency) == 3.99381318311237
    @test SignInfLib.getEntropy(data1) == 1.8464393446710154
    @test SignInfLib.getEntropy(data2) == 1.0
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
    @test res_3[1] == 0.25
end
