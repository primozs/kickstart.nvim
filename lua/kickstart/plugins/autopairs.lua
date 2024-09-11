-- autopairs
-- https://github.com/windwp/nvim-autopairs

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {}
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}

-- {
--   'windwp/nvim-autopairs',
--   opts = {
--     fast_wrap = {},
--     disable_filetype = { 'TelescopePrompt', 'vim' },
--   },
--   config = function(_, opts)
--     require('nvim-autopairs').setup(opts)

--     -- setup cmp for autopairs
--     local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
--     require('cmp').event:on('confirm_done', cmp_autopairs.on_confirm_done())
--   end,
-- },
