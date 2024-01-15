push!(LOAD_PATH,"../src/")


using Documenter
using Helloworld


makedocs(
    sitename = "My Documentation",
    modules = [Helloworld],
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
    ],
    )

deploydocs(
    repo = "github.com/LorenzoFendillo/Helloworld",
)


