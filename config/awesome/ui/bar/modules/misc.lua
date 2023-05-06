local M         = {}
local awful     = require("awful")
local wibox     = require("wibox")
local beautiful = require("beautiful")
local helpers   = require("helpers")
M.launcher      = wibox.widget {
  {
    {
      {
        font = beautiful.font .. " 16",
        markup = helpers.colorizeText(" ", beautiful.pri),
        valign = "center",
        align = "center",
        widget = wibox.widget.textbox,
      },
      margins = 6,
      widget = wibox.container.margin
    },
    bg = beautiful.bg2,
    widget = wibox.container.background
  },
  buttons = {
    awful.button({}, 1, function()
      awesome.emit_signal("toggle::dashboard")
    end)
  },
  widget = wibox.container.margin
}

M.powerbutton   = wibox.widget {
  {
    {
      {
        font = beautiful.icofont .. " 16",
        markup = helpers.colorizeText('󰐥', beautiful.err),
        valign = "center",
        align = "center",
        widget = wibox.widget.textbox,
      },
      margins = 6,
      widget = wibox.container.margin
    },
    bg = beautiful.bg2,
    widget = wibox.container.background
  },
  buttons = {
    awful.button({}, 1, function()
      awesome.emit_signal('show::exit')
      --awful.spawn.with_shell('~/.local/bin/rofiscripts/powermenu')
    end)
  },
  widget = wibox.container.margin
}


return M
