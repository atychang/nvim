local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require("alpha.themes.dashboard")
dashboard.section.header.val = {
[[]],
  [[          ▀████▀▄▄              ▄█ ]],
  [[            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ]],
  [[    ▄        █          ▀▀▀▀▄  ▄▀  ]],
  [[   ▄▀ ▀▄      ▀▄              ▀▄▀  ]],
  [[  ▄▀    █     █▀   ▄█▀▄      ▄█    ]],
  [[  ▀▄     ▀▄  █     ▀██▀     ██▄█   ]],
  [[   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ]],
  [[    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ]],
  [[   █   █  █      ▄▄           ▄▀   ]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", "<CMD>Telescope find_files <CR>"),
  dashboard.button("e", "  New file", "<CMD>ene <BAR> startinsert <CR>"),
  dashboard.button("p", "  Find project", "<CMD>Telescope projects <CR>"),
  dashboard.button("r", "  Recently used files", "<CMD>Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", "<CMD>Telescope live_grep <CR>"),
  dashboard.button("q", "  Quit Neovim", "<CMD>qa<CR>"),
}

local function footer()
  return "T & J Since 2017.07"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
-- vim.cmd([[autocmd User AlphaReady echo 'ready']])
alpha.setup(dashboard.opts)
