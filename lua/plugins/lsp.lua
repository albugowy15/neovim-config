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
      inlay_hints = { enabled = false },
      -- servers = {
      --   tsserver = {
      --     settings = {
      --       typescript = {
      --         inlayHints = {
      --           includeInlayEnumMemberValueHints = false,
      --           includeInlayFunctionLikeReturnTypeHints = false,
      --           includeInlayFunctionParameterTypeHints = false,
      --           -- includeInlayParameterNameHints = "literal",
      --           includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      --           includeInlayPropertyDeclarationTypeHints = false,
      --           includeInlayVariableTypeHints = false,
      --           includeInlayVariableTypeHintsWhenTypeMatchesName = false,
      --         },
      --       },
      --       javascript = {
      --         inlayHints = {
      --           includeInlayEnumMemberValueHints = false,
      --           includeInlayFunctionLikeReturnTypeHints = false,
      --           includeInlayFunctionParameterTypeHints = false,
      --           -- includeInlayParameterNameHints = "literal",
      --           includeInlayParameterNameHintsWhenArgumentMatchesName = false,
      --           includeInlayPropertyDeclarationTypeHints = false,
      --           includeInlayVariableTypeHints = false,
      --           includeInlayVariableTypeHintsWhenTypeMatchesName = false,
      --         },
      --       },
      --     },
      --   },
      -- },
      -- servers = {
      --   astro = {},
      -- },
    },
  },
}
