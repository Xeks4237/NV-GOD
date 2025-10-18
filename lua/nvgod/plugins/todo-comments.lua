return {
    -- todo-comments: Highlight todo, notes, etc in comments
    -- for example:
    -- NOTE:
    -- TODO:
    -- WARN:
    -- INFO:
    -- and .etc
    "folke/todo-comments.nvim",
    event = "VimEnter",
    opts = { signs = false },
}

