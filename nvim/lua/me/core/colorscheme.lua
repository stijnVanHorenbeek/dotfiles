require('rose-pine').setup({
    --- @usage 'auto'|'main'|'moon'|'dawn'
    variant = 'auto',
    --- @usage 'main'|'moon'|'dawn'
    dark_variant = 'main',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = true,
    disable_float_background = true,
    disable_italics = false,

    --- @usage string hex value or named color from rosepinetheme.com/palette
    groups = {
        background = 'base',
        background_nc = '_experimental_nc',
        panel = 'surface',
        panel_nc = 'base',
        border = 'highlight_med',
        comment = 'muted',
        link = 'iris',
        punctuation = 'subtle',

        error = 'love',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',

        headings = {
            h1 = 'iris',
            h2 = 'foam',
            h3 = 'rose',
            h4 = 'gold',
            h5 = 'pine',
            h6 = 'foam',
        }
        -- or set all headings at once
        -- headings = 'subtle'
    },

    -- Change specific vim highlight groups
    -- https://github.com/rose-pine/neovim/wiki/Recipes
    highlight_groups = {
        ColorColumn = { bg = 'foam', blend = 10 },

        -- Blend colours against the "base" background
        CursorLine = { bg = 'foam', blend = 10 },
        StatusLine = { fg = 'love', bg = 'love', blend = 10 },

        -- By default each group adds to the existing config.
        -- If you only want to set what is written in this config exactly,
        -- you can set the inherit option:
        Search = { bg = 'gold', inherit = false },
        NvimTreeNormal = { fg = 'pine', bg = 'none' }
    }
})

local status, _ = pcall(vim.cmd, "colorscheme rose-pine")
if not status then
    print("colorscheme not found")
end

function BlueBalls()
    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
    -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#191b1c" })
    -- vim.api.nvim_set_hl(0, "LineNrAbove", { fg = "#A2FF86", bold = true })
    -- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#ECF8F9", bold = true })
    -- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#FB508F", bold = true })
    -- vim.api.nvim_set_hl(0, "LineNrBelow", { fg = "#4FC0D0", bold = true })
    -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
end

BlueBalls()
