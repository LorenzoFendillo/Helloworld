using Documenter
using Helloworld

Documenter.makedocs(
    sitename = "Helloworld Documentation",
    modules = [Helloworld],
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
    ],
)

deploydocs(
    repo = "github.com/LorenzoFendillo/Helloworld.jl",
)