return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = "ayu_mirage",
				-- component_separators = { left = "", right = "" },
				-- section_separators = { left = "", right = "" },
        section_separators = '', 
        component_separators = '',
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { 
          {
            "mode", fmt = function(str)
          if str == 'NORMAL' then
            return 'N'
          elseif str == 'INSERT' then
            return 'I'
          elseif str == 'COMMAND' then 
            return 'C'
          else 
            return str
          end
        end 
          },
        },
				lualine_b = { "branch", "diff", "diagnostics" },
				lualine_c = { "filename" },
				lualine_x = {"encoding"},
				lualine_y = { "progress", "filetype" },
				-- lualine_z = { "location", "fileformat" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { "filename" },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
      colored = true,
			tabline = {},
			winbar = {},
			inactive_winbar = {},
			extensions = {},
		})
	end,
}
