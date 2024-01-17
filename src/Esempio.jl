module Esempio

export func

"""
    func(x)

Return double the number `x` plus `1`.

e prova latec

The Schrödinger equation in a docstring:

``i\\hbar\\frac{\\partial}{\\partial t}\\Psi(r,t) = \\left[ \\frac{-\\hbar^2}{2m}\\nabla^2 + V(r,t) \\right] \\Psi(r,t)``

This equation describes how the quantum state of a physical system changes over time.

```math
\begin{aligned}
\nabla\cdot\mathbf{E}  &= 4 \pi \rho \\
\nabla\cdot\mathbf{B}  &= 0 \\
\nabla\times\mathbf{E} &= - \frac{1}{c} \frac{\partial\mathbf{B}}{\partial t} \\
\nabla\times\mathbf{B} &= - \frac{1}{c} \left(4 \pi \mathbf{J} + \frac{\partial\mathbf{E}}{\partial t} \right)
\end{aligned}
```

These are Maxwell's equations.

"""
func(x) = 2x + 1

end