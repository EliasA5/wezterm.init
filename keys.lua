local wezterm = require('wezterm')
local act = wezterm.action

return {
  {
    key = 'v',
    mods = 'LEADER',
    action = act.SplitPane {
      direction = 'Right',
      size = { Percent = 40 },
    },
  },
  {
    key = 'h',
    mods = 'LEADER',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'x',
    mods = 'LEADER',
    action = act.CloseCurrentPane { confirm = true },
  },
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab('CurrentPaneDomain'),
  },
  {
    key = 'm',
    mods = 'LEADER',
    action = act.TogglePaneZoomState,
  },
  {
    key = 'Space',
    mods = 'LEADER',
    action = act.SendKey { key = 'Space', mods = 'CTRL' },
  },
  {
    key = 'r',
    mods = 'LEADER',
    action = act.ReloadConfiguration,
  },
  {
    key = 'LeftArrow',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Left', 5 },
  },
  {
    key = 'DownArrow',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Down', 5 },
  },
  {
    key = 'UpArrow',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Up', 5 }
  },
  {
    key = 'RightArrow',
    mods = 'LEADER',
    action = act.AdjustPaneSize { 'Right', 5 },
  },
  {
    key = 'RightArrow',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(1)
  },
  {
    key = 'LeftArrow',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(-1)
  },
  {
    key = 'l',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(1)
  },
  {
    key = 'h',
    mods = 'CTRL|SHIFT',
    action = act.ActivateTabRelative(-1)
  },
  {
    key = 'l',
    mods = 'LEADER',
    action = act.ShowLauncher,
  },
}
