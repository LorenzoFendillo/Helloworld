push!(LOAD_PATH,"src/")

using Documenter
using Helloworld


generated_path = joinpath(@__DIR__, "src")
base_url = "https://github.com/LorenzoFendillo/Helloworld.jl/"
isdir(generated_path) || mkdir(generated_path)
open(joinpath(generated_path, "index.md"), "w") do io
    # Point to source license file
    println(
        io,
        """
        ```@meta
        EditURL = "$(base_url)README.md"
        ```
        """,
    )
    # Write the contents out below the meta block
    for line in eachline(joinpath(dirname(@__DIR__), "README.md"))
        println(io, line)
    end
end


makedocs(
    sitename = "Esempi Documentation",
    modules = [Helloworld],
    format = Documenter.HTML(;
    prettyurls=get(ENV,"CI", "false") == "true"
    ),
    pages = [
        "Home" => "index.md",
        "Esempio1" => "page2.md",
        "Helloworld" => "page3.md",   
    ],
)

deploydocs(
    repo = "github.com/LorenzoFendillo/Helloworld.git",
)


