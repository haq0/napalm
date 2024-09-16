{ pkgs, opts, ... }:
let inherit (pkgs) lib;
in {
  imports = [
    ./autocmd.nix
    ./autopairs.nix
    ./bufferline.nix
    ./cmp.nix
    ./dashboard.nix
    ./firenvim.nix
    ./general.nix
    ./gitsigns.nix
    ./image.nix
    ./lsp.nix
    ./lualine.nix
    ./mappings.nix
    ./noice.nix
    ./none-ls.nix
    ./nvimtree.nix
    ./session.nix
    ./telescope.nix
    ./tokyodark.nix
    ./treesitter.nix
    ./which-key.nix
  ];
  viAlias = true;
  vimAlias = true;

  clipboard.providers.wl-copy.enable = true;

  globals = {
    mapleader = " ";
  };

  opts = {
    clipboard = "unnamedplus";
    cursorline = true;
    cursorlineopt = "number";

    expandtab = true;
    smartindent = true;
    shiftwidth = 2;
    tabstop = 2;
    softtabstop = 2;

    ignorecase = true;
    smartcase = true;

    cmdheight = 0;

    signcolumn = "yes";
    splitbelow = true;
    splitright = true;
    splitkeep = "screen";
    termguicolors = true;
    timeoutlen = lib.mkDefault 500;

    conceallevel = 2;
    undofile = true;
    wrap = false;

    virtualedit = "block";
    winminwidth = 5;
    filencoding = "utf-8";
    list = true;
    smoothscroll = true;
    fillchars = { eob = " "; };

    updatetime = 550;
  };
  extraLuaPackages = ps: with ps; [ luarocks ];
  extraConfigLua = ''
    vim.opt.whichwrap:append("<>[]hl")
    vim.opt.listchars:append("space:·")
  '';
}
