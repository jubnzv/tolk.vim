# Tolk.vim

A comprehensive Vim/Neovim plugin for the [Tolk smart contract language](https://docs.ton.org/v3/documentation/smart-contracts/tolk/overview).

## Features

- **Syntax Highlighting**: Full syntax highlighting based on the [Tolk grammar](https://github.com/ton-blockchain/ton-language-server/blob/a857b8661babd0e03ef87f44870ec6665c6de8dd/editors/code/src/languages/syntaxes/tolk.tmLanguage.json) used in the official VSCode extension
- **Indentation**: Proper indentation for Tolk code structures
- **File Type Detection**: Automatic detection of `.tolk` files
- **Folding Support**: Code folding for better navigation

## Installation

<details>
<summary>Using vim-plug</summary>
Add this to your `.vimrc`:

```vim
Plug 'jubnzv/tolk.vim'
```

Then run `:PlugInstall`
</details>

<details>
<summary>Using Vundle</summary>
Add this to your `.vimrc`:

```vim
Plugin 'jubnzv/tolk.vim'
```

Then run `:PluginInstall`
</details>

### Configuration

Add these to your `.vimrc` to customize behavior:

```vim
" Disable operator highlighting
let g:tolk_highlight_operators = 0

" Disable function highlighting
let g:tolk_highlight_functions = 0

" Disable folding
let g:tolk_fold_enable = 0
```

## License
MIT
