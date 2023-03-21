local wez_status, wezterm = pcall(require, "wezterm")
if not wez_status then
	return {}
end

-- local ssh_domains = require("user.ssh")

return {
	color_scheme = "Catppuccin Macchiato",
	-- font = wezterm.font("SFMono Nerd Font"),
	font = wezterm.font_with_fallback({
		{ family = "JetBrains Mono", weight = "Light", stretch = "ExtraCondensed" },
		"SFMono Nerd Font",
		"MesloLGSDZ Nerd Font",
	}),
	font_size = 14,
	line_height = 1.0,
	window_background_opacity = 1,
	window_decorations = "RESIZE",

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
}
