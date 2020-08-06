module TestCore

using AbstractYieldMacros
using ContextualMacros
using Test

@testset "expandwith" begin
    ex = ContextualMacros.expandwith(
        @__MODULE__,
        quote
            @yield 1 2 3
            @yieldfrom 4 5
        end;
        yield = ctx -> QuoteNode(ctx.args),
        yieldfrom = ctx -> QuoteNode(ctx.args),
    )
    nodes = filter(x -> x isa QuoteNode, ex.args)
    @test nodes == [QuoteNode((1, 2, 3)), QuoteNode((4, 5))]
end

end  # module
