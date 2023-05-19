local filters = require "mutchar.filters"
require("mutchar").setup {
  ["c"] = {
    rules = { "-", "->" },
    filter = filters.non_space_before,
  },
  ["rust"] = {
    rules = {
      { "<space>;", "::" },
      { "<space>-", "->" },
      { "<space>,", "<!>" },
    },
    filter = {
      filters.semicolon_in_rust,
      filters.minus_in_rust,
      filters.generic_in_rust,
    },
    one_to_one = true,
  },
  ["go"] = {
    rules = {
      { ";;", ":=" },
      { "..", "..." },
    },
    filter = {
      filters.non_space_before,
    },
  },
}
