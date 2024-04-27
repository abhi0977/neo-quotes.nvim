![neo-quotes.nvim Logo](https://res.cloudinary.com/drsgyrgqe/image/upload/c_fill,w_200,h_200/v1714228905/DALL_E_2024-04-27_20.05.56_-_A_minimalistic_and_modern_logo_design_for_a_software_project_named__neo-quotes.nvim_._The_logo_should_feature_stylized_quotation_marks_integrated_eleg_copy-removebg-previe_cl6llf.png)

# neo-quotes.nvim

`neo-quotes.nvim` is a Neovim plugin designed to display inspirational programming quotes directly within your editor. Enhance your coding experience with a touch of wisdom and motivation every time you open Neovim.

## Features

- **Inspirational Quotes**: Randomly displays an inspirational programming quote in your Neovim status line or as a pop-up.
- **Customizable**: Easily customize the frequency and type of quotes displayed.
- **Non-intrusive**: Designed to be lightweight and non-intrusive, providing inspiration without disrupting your workflow.

## Installation

You can install `neo-quotes.nvim` using your favorite Neovim package manager.

### Using [packer.nvim](https://github.com/wbthomason/packer.nvim)

Add the following to your Neovim configuration file:

```lua
use {
  'yourusername/neo-quotes.nvim',
  requires = { 'rcarriga/nvim-notify' }
}
