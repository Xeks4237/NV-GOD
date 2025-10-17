-- NOTE: See ":help gitsigns" to understand what the configuration keys do
return {
    { -- Adds git related signs to the gutter, as well as utilities for managing changes
        "lewis6991/gitsigns.nvim",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "~" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
            },
            on_attach = function(bufnr)
                local gitsigns = require "gitsigns"

                local function map(mode, l, r, opts)
                    opts = opts or {}
                    opts.buffer = bufnr
                    vim.keymap.set(mode, l, r, opts)
                end

                -- Navigation
                map("n", "<leader>g]", function()
                    if vim.wo.diff then
                        vim.cmd.normal { "]c", bang = true }
                    else
                        gitsigns.nav_hunk "next"
                    end
                end, { desc = "[G]it Next Change" })

                map("n", "<leader>g[", function()
                    if vim.wo.diff then
                        vim.cmd.normal { "[c", bang = true }
                    else
                        gitsigns.nav_hunk "prev"
                    end
                end, { desc = "[G]it Previous Change" })

                -- Actions
                -- visual mode
                map("v", "<leader>gs", function()
                    gitsigns.stage_hunk { vim.fn.line ".", vim.fn.line "v" }
                end, { desc = "[G]it [s]tage hunk" })
                map("v", "<leader>gr", function()
                    gitsigns.reset_hunk { vim.fn.line ".", vim.fn.line "v" }
                end, { desc = "[G]it [r]eset hunk" })
                -- normal mode
                map("n", "<leader>gs", gitsigns.stage_hunk, { desc = "[G]it [s]tage hunk" })
                map("n", "<leader>gr", gitsigns.reset_hunk, { desc = "[G]it [r]eset hunk" })
                map("n", "<leader>gS", gitsigns.stage_buffer, { desc = "[G]it [S]tage buffer" })
                map("n", "<leader>gu", gitsigns.stage_hunk, { desc = "[G]it [u]ndo stage hunk" })
                map("n", "<leader>gR", gitsigns.reset_buffer, { desc = "[G]it [R]eset buffer" })
                map("n", "<leader>gp", gitsigns.preview_hunk, { desc = "[G]it [p]review hunk" })
                map("n", "<leader>gb", gitsigns.blame_line, { desc = "[G]it [b]lame line" })
                map("n", "<leader>gd", gitsigns.diffthis, { desc = "[G]it [d]iff against index" })
                map("n", "<leader>gD", function()
                    gitsigns.diffthis "@"
                end, { desc = "[G]it [D]iff against last commit" })
                -- Toggle Options
                map("n", "<leader>gtb", gitsigns.toggle_current_line_blame, { desc = "[T]oggle [B]lame Line" })
                map("n", "<leader>gtd", gitsigns.preview_hunk_inline, { desc = "[T]oggle [D]eleted Lines" })
            end,
        },
    },
}

