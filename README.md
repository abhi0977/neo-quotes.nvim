![neo-quotes.nvim Logo](https://res.cloudinary.com/drsgyrgqe/image/upload/c_fill,w_200,h_200/v1714228905/DALL_E_2024-04-27_20.05.56_-_A_minimalistic_and_modern_logo_design_for_a_software_project_named__neo-quotes.nvim_._The_logo_should_feature_stylized_quotation_marks_integrated_eleg_copy-removebg-previe_cl6llf.png)

# neo-quotes.nvim

`neo-quotes.nvim` is a Neovim plugin designed to display inspirational programming quotes directly within your editor. Enhance your coding experience with a touch of wisdom and motivation every time you open Neovim.


![init](https://github.com/user-attachments/assets/3deb169e-6da7-4795-b398-ff9ecd353b31)

![commad](https://github.com/user-attachments/assets/e077d54e-b83f-458a-9024-f511593bf68e)


## Features

- **Inspirational Quotes**: Randomly displays an inspirational programming quote in your Neovim status line or as a pop-up.
- **Customizable**: Easily customize the frequency and type of quotes displayed.
- **Non-intrusive**: Designed to be lightweight and non-intrusive, providing inspiration without disrupting your workflow.

Here's a simplified version of the installation guide:

---

# Installation

## Using **Lazy.nvim**

Add the following to your Lazy.nvim plugin configuration:

```lua
{
  'abhi0977/neo-quotes.nvim',
  dependencies = { 'rcarriga/nvim-notify' }
}
```

---

## Using **Packer**

Add the following to your Packer configuration:

```lua
use {
  'abhi0977/neo-quotes.nvim',
  requires = { 'rcarriga/nvim-notify' }
}
```

---

## Using **vim-plug**

Add the following to your `init.vim` or `init.lua`:

```vim
Plug 'abhi0977/neo-quotes.nvim'
Plug 'rcarriga/nvim-notify'
```

---
