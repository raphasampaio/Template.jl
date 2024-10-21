using Template

using Aqua
using Test

function test_aqua()
    @testset "Ambiguities" begin
        Aqua.test_ambiguities(Template, recursive = false)
    end
    Aqua.test_all(Template, ambiguities = false)

    return nothing
end

function test_all()
    @testset "Aqua.jl" begin
        test_aqua()
    end

    return nothing
end

test_all()
