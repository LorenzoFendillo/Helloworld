push!(LOAD_PATH,"src/")

using Documenter
using Helloworld
using Esempio


makedocs(
    sitename = "Helloworld Documentation",
    modules = [Helloworld, Esempio],
    format = Documenter.HTML(;
    prettyurls=get(ENV,"CI", "false") == "true"
    ),
    pages = [
        "Home" => "index.md",
        "Page 2" => "page2.md",
    ],
)

deploydocs(
    repo = "github.com/LorenzoFendillo/Helloworld.git",
)


