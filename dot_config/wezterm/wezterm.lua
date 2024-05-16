local wez_status, wezterm = pcall(require, "wezterm")
local mux = wezterm.mux
if not wez_status then
	return {}
end

local act = wezterm.action

-- local ssh_domains = require("user.ssh")

-- wezterm.on("gui-startup", function(cmd)
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():set_inner_size(100, 48)
-- end)

return {
	default_prog = {
		"distrobox",
		"enter",
		"fedora",
		"--",
		"/usr/bin/fish",
		"-l",
	},
	launch_menu = {
		{
			-- This isn't working.
			label = "Host Shell",
			-- args = { "sh", "-c", "exec /usr/bin/fish -l" },
			args = { "sh", "-c", "distrobox-host-exec" },
		},
		{
			label = "Fedora Box",
			args = {
				"distrobox",
				"enter",
				"fedora",
				"--",
				"/usr/bin/fish",
				"-l",
			},
		},
		{
			label = "Bazzite Arch",
			args = {
				"distrobox",
				"enter",
				"bazzite-arch",
				"--",
				"/usr/bin/fish",
				"-l",
			},
		},
		{
			label = "Bluefin",
			args = {
				"distrobox",
				"enter",
				"bluefin",
				"--",
				"/usr/bin/fish",
				"-l",
			},
		},
	},
	enable_wayland = true,
	window_close_confirmation = "NeverPrompt",
	warn_about_missing_glyphs = false,
	initial_cols = 100,
	initial_rows = 48,
	color_scheme = "Catppuccin Macchiato",
	font = wezterm.font_with_fallback({
		{
			family = "MapleMono NF",
			weight = "Regular",
		},
		"IosevkaTerm Nerd Font",
		"MesloLGLDZ Nerd Font",
		{
			family = "JetBrains Mono",
			weight = "Light",
			-- stretch = "ExtraCondensed"
		},
		"SFMono Nerd Font",
		"FreeMono",
	}),
	font_size = 13,
	line_height = 1.0,
	window_background_opacity = 1,
	-- window_decorations = "RESIZE",
	-- window_decorations = "NONE",
	window_frame = {
		border_left_width = "2",
		border_right_width = "2",
		border_bottom_height = "2",
		border_top_height = "2",
		border_left_color = "#363a4f", -- "surface0" in catppuccin macchiato
		border_right_color = "#363a4f",
		border_bottom_color = "#363a4f",
		border_top_color = "#363a4f",
	},

	underline_position = -2,
	underline_thickness = 2,
	custom_block_glyphs = true, -- false = use font's own glyphs

	-- Tab bar
	use_fancy_tab_bar = false,
	hide_tab_bar_if_only_one_tab = true,
	tab_bar_at_bottom = true,

	-- ssh_domains = ssh_domains,

	audible_bell = "Disabled",
	visual_bell = {
		fade_in_function = "EaseIn",
		fade_in_duration_ms = 150,
		fade_out_function = "EaseOut",
		fade_out_duration_ms = 150,
	},
	colors = {
		visual_bell = "#202020",
	},

	inactive_pane_hsb = {
		saturation = 0.80,
		brightness = 0.85,
	},

	keys = {
		-- Pane keymaps
		{ key = "s", mods = "ALT|SHIFT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "v", mods = "ALT|SHIFT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "n", mods = "ALT", action = act.ActivatePaneDirection("Left") },
		{ key = "i", mods = "ALT", action = act.ActivatePaneDirection("Right") },
		{ key = "u", mods = "ALT", action = act.ActivatePaneDirection("Up") },
		{ key = "e", mods = "ALT", action = act.ActivatePaneDirection("Down") },

		{ key = "r", mods = "ALT", action = act.RotatePanes("Clockwise") },
	},
}
