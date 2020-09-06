# AbstractYieldMacros

[![GitHub Actions](https://github.com/JuliaFolds/AbstractYieldMacros.jl/workflows/Run%20tests/badge.svg)](https://github.com/JuliaFolds/AbstractYieldMacros.jl/actions?query=workflow%3ARun+tests)

AbstractYieldMacros.jl provides `@yield` and `@yieldfrom` simplify
defined as

```julia
ContextualMacros.@contextualmacro @yield
ContextualMacros.@contextualmacro @yieldfrom
```

using
[ContextualMacros.jl](https://github.com/tkf/ContextualMacros.jl).
This package exists primary for sharing `@yield` and `@yieldfrom`
macro in
[FGenerators.jl](https://github.com/JuliaFolds/FGenerators.jl) and
[GeneratorsX.jl](https://github.com/JuliaFolds/GeneratorsX.jl).
However, this package can be used for sharing `@yield` and
`@yieldfrom` macros between arbitrary packages.  See
[ContextualMacros.jl](https://github.com/tkf/ContextualMacros.jl) for
more information.
