--[[

Lua guides:
  - https://learnxinyminutes.com/docs/lua/
  - :help lua-guide

Use keymap "<leader>sh" to [s]earch the [h]elp documentation

Any errors? Run `:checkhealth`.

--]]

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' ' -- Set <space> as the leader key
vim.g.maplocalleader = ' '

require 'config.lazy'
require 'config.options'
require 'config.keymaps'

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
