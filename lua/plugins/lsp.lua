return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "astro-language-server",
        "svelte-language-server",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
      -- servers = {
      --   astro = {},
      -- },
    },
  },
}
