function Status:name()
	local h = self._tab.current.hovered
	if not h then
		return ui.Line {}
	end

    local linked = ""
    if h.link_to ~= nil then
        linked = " -> " .. tostring(h.link_to)
    end
    return ui.Line(" " .. h.name .. linked)
end

require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

-- require("bookmarks"):setup({
-- 	persist = "all",
-- 	desc_format = "full",
-- 	last_directory = { enable = true, persist = true },
--     show_keys= true,
-- 	notify = {
-- 		enable = true,
-- 		timeout = 1,
-- 		message = {
-- 			new = "New bookmark '<key>' -> '<folder>'",
-- 			delete = "Deleted bookmark in '<key>'",
-- 			delete_all = "Deleted all bookmarks",
-- 		},
-- 	},
-- })

-- ~/.config/yazi/init.lua
require("bookmarks"):setup({
	last_directory = { enable = false, persist = false, mode="dir" },
	persist = "all",
	desc_format = "full",
	file_pick_mode = "hover",
	custom_desc_input = false,
	show_keys = false,
	notify = {
		enable = false,
		timeout = 1,
		message = {
			new = "New bookmark '<key>' -> '<folder>'",
			delete = "Deleted bookmark in '<key>'",
			delete_all = "Deleted all bookmarks",
		},
	},
})

require("simple-status"):setup()
