push!(LOAD_PATH,"src/")

using Documenter
using Helloworld
using Esempio


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
    sitename = "Helloworld Documentation",
    modules = [Helloworld, Esempio],
    format = Documenter.HTML(;
    prettyurls=get(ENV,"CI", "false") == "true"
    ),
    pages = [
        "Home" => "index.md",
        "Page 2" => "page2.md",
        "Page 3" => "page3.md",   
    ],
)

deploydocs(
    repo = "github.com/LorenzoFendillo/Helloworld.git",
)


