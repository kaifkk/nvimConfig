-- tokyonight ColorScheme
-- return {
-- 	"folke/tokyonight.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	config = function()
-- 		require("tokyonight").setup({
-- 			-- your configuration comes here
-- 			-- or leave it empty to use the default settings
-- 			style = "night", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
-- 			light_style = "day", -- The theme is used when the background is set to light
-- 			transparent = false, -- Enable this to disable setting the background color
-- 			terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
-- 			styles = {
-- 				-- Style to be applied to different syntax groups
-- 				-- Value is any valid attr-list value for `:help nvim_set_hl`
-- 				comments = { italic = true },
-- 				keywords = { italic = true },
-- 				functions = {},
-- 				variables = {},
-- 				-- Background styles. Can be "dark", "transparent" or "normal"
-- 				sidebars = "dark", -- style for sidebars, see below
-- 				floats = "dark", -- style for floating windows
-- 			},
-- 			sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
-- 			day_brightness = 0.3, -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
-- 			hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
-- 			dim_inactive = false, -- dims inactive windows
-- 			lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
--
-- 			--- You can override specific color groups to use other groups or a hex color
-- 			--- function will be called with a ColorScheme table
-- 			---@param colors ColorScheme
-- 			on_colors = function(colors) end,
--
-- 			--- You can override specific highlights to use other groups or a hex color
-- 			--- function will be called with a Highlights and ColorScheme table
-- 			---@param highlights Highlights
-- 			---@param colors ColorScheme
-- 			on_highlights = function(highlights, colors) end,
-- 		})
-- 		vim.cmd([[colorscheme tokyonight]])
-- 	end,
-- }
--
-- Lazy
-- return {
-- 	"olimorris/onedarkpro.nvim",
-- 	priority = 1000, -- Ensure it loads first
--
-- 	config = function()
-- 		require("onedarkpro").setup({})
-- 		vim.cmd("colorscheme onedark")
-- 	end,
-- }

-- return {
-- 	"shaunsingh/nord.nvim",
-- 	priority = 1000,
-- 	config = function()
-- 		--Lua:
-- 		vim.cmd([[colorscheme nord]])
-- 	end,
-- }

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      background = {      -- :h background
        light = "mocha",
        dark = "mocha",
      },
      transparent_background = false, -- disables setting the background color.
      show_end_of_buffer = false,  -- shows the '~' characters after the end of buffers
      term_colors = true,          -- sets terminal colors (e.g. `g:terminal_color_0`)
      dim_inactive = {
        enabled = false,           -- dims the background color of inactive window
        shade = "dark",
        percentage = 0.15,         -- percentage of the shade to apply to the inactive window
      },
      no_italic = false,           -- Force no italic
      no_bold = false,             -- Force no bold
      no_underline = false,        -- Force no underline
      styles = {                   -- Handles the styles of general hi groups (see `:h highlight-args`):
        comments = { "italic" },   -- Change the style of comments
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {},
      custom_highlights = {},
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        notify = false,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    })

    -- setup must be called before loading
    vim.cmd.colorscheme("catppuccin")
  end,
}
--
-- return {
-- 	"rmehri01/onenord.nvim",
-- 	config = function()
-- 		require("onenord").setup({
-- 			theme = nil, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
-- 			borders = true, -- Split window borders
-- 			fade_nc = false, -- Fade non-current windows, making them more distinguishable
-- 			-- Style that is applied to various groups: see `highlight-args` for options
-- 			styles = {
-- 				comments = "NONE",
-- 				strings = "NONE",
-- 				keywords = "NONE",
-- 				functions = "NONE",
-- 				variables = "NONE",
-- 				diagnostics = "underline",
-- 			},
-- 			disable = {
-- 				background = false, -- Disable setting the background color
-- 				float_background = false, -- Disable setting the background color for floating windows
-- 				cursorline = false, -- Disable the cursorline
-- 				eob_lines = true, -- Hide the end-of-buffer lines
-- 			},
-- 			-- Inverse highlight for different groups
-- 			inverse = {
-- 				match_paren = false,
-- 			},
-- 			custom_highlights = {}, -- Overwrite default highlight groups
-- 			custom_colors = {}, -- Overwrite default colors
-- 		})
-- 	end,
-- }

-- return {
--   "rebelot/kanagawa.nvim",
--
--   config = function()
--     -- Default options:
--     require("kanagawa").setup({
--       compile = false,  -- enable compiling the colorscheme
--       undercurl = true, -- enable undercurls
--       commentStyle = { italic = true },
--       functionStyle = {},
--       keywordStyle = { italic = true },
--       statementStyle = { bold = true },
--       typeStyle = {},
--       transparent = false,    -- do not set background color
--       dimInactive = false,    -- dim inactive window `:h hl-NormalNC`
--       terminalColors = false, -- define vim.g.terminal_color_{0,17}
--       colors = {              -- add/modify theme and palette colors
--         palette = {},
--         theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
--       },
--       overrides = function(colors) -- add/modify highlights
--         return {}
--       end,
--       theme = "wave",  -- Load "wave" theme when 'background' option is not set
--       background = {   -- map the value of 'background' option to a theme
--         dark = "wave", -- try "dragon" !
--         light = "lotus",
--       },
--     })
--
--     -- setup must be called before loading
--     vim.cmd("colorscheme kanagawa-wave")
--   end,
-- }

-- return {
-- 	"rose-pine/neovim",
-- 	config = function()
-- 		require("rose-pine").setup({
-- 			--- @usage 'auto'|'main'|'moon'|'dawn'
-- 			variant = "auto",
-- 			--- @usage 'main'|'moon'|'dawn'
-- 			dark_variant = "main",
-- 			bold_vert_split = false,
-- 			dim_nc_background = false,
-- 			disable_background = false,
-- 			disable_float_background = false,
-- 			disable_italics = false,
--
-- 			--- @usage string hex value or named color from rosepinetheme.com/palette
-- 			groups = {
-- 				background = "base",
-- 				background_nc = "_experimental_nc",
-- 				panel = "surface",
-- 				panel_nc = "base",
-- 				border = "highlight_med",
-- 				comment = "muted",
-- 				link = "iris",
-- 				punctuation = "subtle",
--
-- 				error = "love",
-- 				hint = "iris",
-- 				info = "foam",
-- 				warn = "gold",
--
-- 				headings = {
-- 					h1 = "iris",
-- 					h2 = "foam",
-- 					h3 = "rose",
-- 					h4 = "gold",
-- 					h5 = "pine",
-- 					h6 = "foam",
-- 				},
-- 				-- or set all headings at once
-- 				-- headings = 'subtle'
-- 			},
--
-- 			-- Change specific vim highlight groups
-- 			-- https://github.com/rose-pine/neovim/wiki/Recipes
-- 			highlight_groups = {
-- 				ColorColumn = { bg = "rose" },
--
-- 				-- Blend colours against the "base" background
-- 				CursorLine = { bg = "foam", blend = 10 },
-- 				StatusLine = { fg = "love", bg = "love", blend = 10 },
--
-- 				-- By default each group adds to the existing config.
-- 				-- If you only want to set what is written in this config exactly,
-- 				-- you can set the inherit option:
-- 				Search = { bg = "gold", inherit = false },
-- 			},
-- 		})
--
-- 		-- Set colorscheme after options
-- 		vim.cmd("colorscheme rose-pine")
-- 	end,
-- }

-- return {
-- 	"EdenEast/nightfox.nvim",
-- 	config = function()
-- 		-- Default options
-- 		require("nightfox").setup({
-- 			options = {
-- 				-- Compiled file's destination location
-- 				compile_path = vim.fn.stdpath("cache") .. "/nightfox",
-- 				compile_file_suffix = "_compiled", -- Compiled file suffix
-- 				transparent = false, -- Disable setting background
-- 				terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
-- 				dim_inactive = false, -- Non focused panes set to alternative background
-- 				module_default = true, -- Default enable value for modules
-- 				colorblind = {
-- 					enable = false, -- Enable colorblind support
-- 					simulate_only = false, -- Only show simulated colorblind colors and not diff shifted
-- 					severity = {
-- 						protan = 0, -- Severity [0,1] for protan (red)
-- 						deutan = 0, -- Severity [0,1] for deutan (green)
-- 						tritan = 0, -- Severity [0,1] for tritan (blue)
-- 					},
-- 				},
-- 				styles = { -- Style to be applied to different syntax groups
-- 					comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
-- 					conditionals = "NONE",
-- 					constants = "NONE",
-- 					functions = "NONE",
-- 					keywords = "NONE",
-- 					numbers = "NONE",
-- 					operators = "NONE",
-- 					strings = "NONE",
-- 					types = "NONE",
-- 					variables = "NONE",
-- 				},
-- 				inverse = { -- Inverse highlight for different types
-- 					match_paren = false,
-- 					visual = false,
-- 					search = false,
-- 				},
-- 				modules = { -- List of various plugins and additional options
-- 					-- ...
-- 				},
-- 			},
-- 			palettes = {},
-- 			specs = {},
-- 			groups = {},
-- 		})
--
-- 		-- setup must be called before loading
-- 		vim.cmd("colorscheme nightfox")
-- 	end,
-- }
