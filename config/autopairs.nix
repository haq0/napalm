{
  plugins = {
    nvim-autopairs = {
      enable = true;
      settings = {
        fast_wrap = { };
      };
    };
  };
  extraConfigLua = # lua
    ''
      local npairs = require("nvim-autopairs")
      local Rule = require("nvim-autopairs.rule")

      npairs.add_rule(Rule("$$", "$$", "tex"))

      '';
}
