using Documenter
using Helloworld


makedocs(
    sitename = "Helloworld Documentation",
    modules = [Helloworld],
    format = Documenter.HTML(),
    pages = [
        "Home" => "index.md",
        "Page 2" => "page2.md",
    ],
)

deploydocs(
    repo = "https://github.com/LorenzoFendillo/Helloworld",
)