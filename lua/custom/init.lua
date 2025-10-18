-- NOTE: This file and "custom" directory is needed to easyly add and overwrite default NV-GOD settings.
-- It was made to easyly update NV-GOD to the newest version, and don't lose your own changes to settings.

-- NOTE: To actually use that you need to:
-- 1. Copy files and directorys where you made changes, from "nvgod" directory to "custom" directory
-- (recommended to keep structure of "custom" directory same as in "nvgod" directory)
-- 2. Write require to all directorys and files in them to "return {}" table below
-- (Examples of how it gonna look are provided too)
return {
    -- NOTE: Just uncomment ones what you need
    -- [ Require individual files ]
    -- require("custom.options"),
    -- require("custom.core-keymaps"),
    -- require("custom.extra-keymaps"),
    -- -- [ Require all files individual directorys ]
    -- require("custom.plugins"),
    -- require("custom.colorschemes"),
    -- require("custom.plugins.mason"),
    -- require("custom.plugins.treesitter"),
    -- require("custom.plugins.cmp"),
    -- require("custom.plugins.dap"),
}

