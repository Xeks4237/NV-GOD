return {
    -- Add current file to Harpoon marks
    { "<leader>ha", function() require("harpoon.mark").add_file() end, { desc = "Harpoon: Add file to marks" }},
    -- Toggle Harpoon quick menu (fallback UI if Telescope is unavailable)
    { "<leader>hm", function() require("harpoon.ui").toggle_quick_menu() end, { desc = "Harpoon: Toggle quick menu" }},
    -- Open Harpoon marks in Telescope picker
    { "<leader>ht", ":Telescope harpoon marks<CR>", { desc = "Harpoon: Open marks in Telescope" }},
    -- Navigate to specific marks (first 4 marks)
    { "<leader>1", function() require("harpoon.ui").nav_file(1) end, { desc = "Harpoon: Go to mark 1" }},
    { "<leader>2", function() require("harpoon.ui").nav_file(2) end, { desc = "Harpoon: Go to mark 2" }},
    { "<leader>3", function() require("harpoon.ui").nav_file(3) end, { desc = "Harpoon: Go to mark 3" }},
    { "<leader>4", function() require("harpoon.ui").nav_file(4) end, { desc = "Harpoon: Go to mark 4" }},
    -- Navigate to next/previous mark
    { "<leader>hn", function() require("harpoon.ui").nav_next() end, { desc = "Harpoon: Go to next mark" }},
    { "<leader>hp", function() require("harpoon.ui").nav_prev() end, { desc = "Harpoon: Go to previous mark" }},
    -- Toggle command menu for project-specific terminal commands
    { "<leader>hc", function() require("harpoon.cmd-ui").toggle_quick_menu() end, { desc = "Harpoon: Toggle command menu" }},
}

