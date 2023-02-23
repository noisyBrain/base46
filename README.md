## NvChad theme plugin

- This plugin's a whole re-write of Norcalli's plugin.
 
## Installation

Install the theme with your preferred package manager:

[vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'wuelnerdotexe/base46'
```

[lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
return {
  "wuelnerdotexe/base46",
  lazy = false,
  priority = 1000,
  dependencies = "nvim-lua/plenary.nvim",
}
```

## 🚀 Usage

Enable the colorscheme:

```vim
" Vim Script
colorscheme base46
```

```lua
-- Lua
vim.cmd[[colorscheme base46]]
```

## Configuration

> ❗️ configuration needs to be set **BEFORE** loading the color scheme with
> `colorscheme base46`

```lua
-- your configuration comes here
-- or leave it empty to use the default settings
require("base46").setup({
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme = "onedark", -- default theme
  transparency = false,
})
```

## Contribute for new themes 

- go to base46/themes and add your file, ex: atheme.lua
```lua
-- atheme.lua file be like 

local M = {}

M.base_30 = {
  -- some colors 
}

M.base_16 = {
  -- some colors 
}

vim.opt.bg = "dark" -- this can be either dark or light

M = require("base46").override_theme(M, "atheme")

return M
```

## Understanding theme variables 

- Read the following for base_16 variables https://github.com/chriskempson/base16/blob/master/styling.md

- Use a color lightening/darkening tool, such as this https://siduck.github.io/hex-tools/
- The following variables are for base_30 

```
black = usually your theme bg 
darker_black = 6% darker than black
black2 = 6% lighter than black

onebg = 10% lighter than black
oneb2 = 19% lighter than black
oneb3 = 27% lighter than black

grey = 40% lighter than black (the % here depends so choose the perfect grey!)
grey_fg = 10% lighter than grey
grey_fg2 = 20% lighter than grey
light_grey = 28% lighter than grey

baby_pink = 15% lighter than red or any babypink color you like!
line = 15% lighter than black 

nord_blue = 13% darker than blue 
sun = 8% lighter than yellow

statusline_bg = 4% lighter than black
lightbg = 13% lighter than statusline_bg
lightbg2 = 7% lighter than statusline_bg

folder_bg = blue color

(note : the above values are mostly approx values so its not compulsory that you have to use those exact numbers , test your theme i.e show it in the PR to get feedback from @siduck)
```
