push!(LOAD_PATH,"../src/")


using Documenter
using Helloworld


makedocs(
    sitename = "Test Documentation",
    modules = [Helloworld, Funzione],
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
        "Page 2" => "page2.md",
        "Page 3" => "page3.md",
    ],
    )

deploydocs(
    repo = "github.com/LorenzoFendillo/Helloworld",
)


