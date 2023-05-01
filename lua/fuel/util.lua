local M = {}

M.buffer_identifier = "_fuel_main_console"

M.compilers = {
    java = "javac",
    kotlin = "kotlinc",
    scala = "scala",
    c = "gcc",
    cpp = "g++",
    clojure = "clojure",
    rust = "rustc",
    haskell = "ghc",
    lua = "lua",
    python = "python",
    go = "go",
    zig = "zig"
}

function M.find_language_by_compiler(compiler)
    for k, v in pairs(M.compilers) do
        if v == compiler then return k end
    end
    return nil
end

function M.statusline_style(lang, file)
    return string.format("%%#Normal# %s Console | Running   %s", lang, file)
end

function M.footer(lang, file)
    return string.format("%s Console   %s", lang, file)
end

return M
