return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local builtin = require("telescope.builtin")
		--vim.keymap.set("n", "<C-f>", builtin.find_files, {
		--	hidden = true,
		--})

    vim.keymap.set('n', '<C-f>', function()
      builtin.find_files({
        hidden = true,
        --no_ignore = true
      })
    end)
	end
}
