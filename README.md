# Alabaster.nvim

A minimal dark colorscheme for Vim/Neovim inspired by the Alabaster theme.

![License](https://img.shields.io/badge/license-MIT-blue.svg)

## Features

- 🎨 Carefully crafted color palette based on ANSI colors
- 🌙 Dark background for comfortable coding
- 🔍 Support for modern Neovim features:
  - LSP diagnostics
  - Treesitter highlighting
  - Telescope
  - Neo-tree / NvimTree
  - GitGutter / Git signs
- 📦 Works with both Vim and Neovim
- ⚡ Terminal colors support

## Color Palette

The theme uses a carefully selected palette:

- **Background**: `#0e1415`
- **Foreground**: `#cecece`
- **Red**: `#d2322d` (errors, functions)
- **Green**: `#6abf40` (strings, added)
- **Yellow**: `#cd974b` (types, warnings)
- **Blue**: `#217EBC` (keywords, definitions)
- **Magenta**: `#9B3596` (constants)
- **Cyan**: `#178F79` (special)

## Installation

### Using [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/alabaster.nvim",
  priority = 1000,
  config = function()
    require("alabaster").setup()
  end,
}
```

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "your-username/alabaster.nvim",
  config = function()
    require("alabaster").setup()
  end
}
```

### Using [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'your-username/alabaster.nvim'
```

### Manual Installation

Clone this repository into your Neovim config directory:

```bash
git clone https://github.com/your-username/alabaster.nvim ~/.config/nvim/pack/plugins/start/alabaster.nvim
```

## Usage

### Neovim (Lua)

```lua
-- In your init.lua
require("alabaster").setup()

-- Or simply
vim.cmd("colorscheme alabaster")
```

### Vim / Neovim (VimScript)

```vim
" In your init.vim or .vimrc
colorscheme alabaster
```

## Configuration

Currently, the theme works out of the box without additional configuration. Future versions may include customization options.

```lua
require("alabaster").setup({
  -- Configuration options will be added here in future versions
})
```

## Plugin Support

Alabaster.nvim includes optimized colors for popular Neovim plugins:

- **LSP**: Native LSP diagnostics, errors, warnings, hints
- **Treesitter**: Semantic highlighting for better syntax understanding
- **Telescope**: Beautiful fuzzy finder colors
- **Neo-tree / NvimTree**: File explorer integration
- **Git Integration**: GitGutter, git signs, diff colors
- **Statusline**: Compatible with popular statusline plugins

## Screenshots

<!-- Add your screenshots here -->

## Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new features
- Submit pull requests
- Improve documentation

## License

MIT License - see [LICENSE](LICENSE) file for details.

## Credits

Inspired by the Alabaster color scheme.

## Related Projects

- [Alabaster for VS Code](https://github.com/tonsky/vscode-theme-alabaster)
- Other editor implementations of the Alabaster theme

---

Made with ❤️ for Vim/Neovim users
