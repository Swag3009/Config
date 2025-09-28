-- Put this in your init.lua
vim.api.nvim_create_user_command("NewPost", function(opts)
	local title = opts.args ~= "" and opts.args or "new-post"
	local date = os.date("%Y-%m-%d")
	local filename = "_posts/" .. date .. "-" .. title:gsub(" ", "-"):lower() .. ".md"

	local header = string.format(
		[[
---
title: "%s"
description: ""
date: %s
categories: []
tags: []
author: Swagatika
image:
  path: ""
  alt:
---
]],
		title,
		date
	)

	-- Write template to file
	local f = io.open(filename, "w")
	f:write(header)
	f:close()

	-- Open file in nvim
	vim.cmd("edit " .. filename)
end, { nargs = "?", complete = "file" })
