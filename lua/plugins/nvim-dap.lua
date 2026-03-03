return {
  'mfussenegger/nvim-dap',
  dependencies = {
    'rcarriga/nvim-dap-ui',
    'theHamsta/nvim-dap-virtual-text',
    'nvim-neotest/nvim-nio',
    'williamboman/mason.nvim',
  },
  config = function()
    local dap = require 'dap'

    dap.adapters.debugpy = {
      type = 'executable',
      command = 'python',
      args = { '-m', 'debugpy.adapter' },
    }
    dap.adapters.python = dap.adapters.debugpy

    vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)

    local dapui = require 'dapui'
    dapui.setup()

    dap.listeners.before.attach.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.launch.dapui_config = function()
      dapui.open()
    end
    dap.listeners.before.event_terminated.dapui_config = function()
      dapui.close()
    end
    dap.listeners.before.event_exited.dapui_config = function()
      dapui.close()
    end

    -- TODO: Figure out DAP keymaps to not pollute
    -- vim.keymap.set('n', '<F>', dap.continue)
    -- vim.keymap.set('n', '<F>', dap.step_into)
    -- vim.keymap.set('n', '<F>', dap.step_over)
    -- vim.keymap.set('n', '<F>', dap.step_out)
    -- vim.keymap.set('n', '<F>', dap.step_back)
    -- vim.keymap.set('n', '<F>', dap.restart)
  end,
}
