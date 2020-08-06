module AbstractYieldMacros

export @yield, @yieldfrom

using ContextualMacros

ContextualMacros.@contextualmacro @yield
ContextualMacros.@contextualmacro @yieldfrom

end
