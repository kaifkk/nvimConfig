return {
  "szw/vim-maximizer",
  --version = "*",
  --lazy = true,
  --dependencies = {
    --"nvim-tree/nvim-web-devicons",
  --},
   -- config = function()
   -- require("vim-maximizer").setup()
   -- end,
   keys = {
       {"<leader>sm", "<cmd>MaximizerToggle<CR>"}
   }
}
