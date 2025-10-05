# taken from: https://www.reddit.com/r/neovim/comments/1kflort/persistence_neotree_how_to_avoid_reopening
return {
  "akinsho/bufferline.nvim",
  opts = {
    options = {
      custom_filter = function(buf, _)
        -- Directory buffers appears after restoring the session and
        -- they should be ignored.
        local buf_name = vim.api.nvim_buf_get_name(buf)
        local state = vim.uv.fs_stat(buf_name)
        if state and state.type == "directory" then
          return false
        end

        return true
      end,
    },
  },
}
