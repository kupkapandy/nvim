return {
  "kawre/leetcode.nvim",
  build = ":TSUpdate html",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",

    -- optional
    "nvim-treesitter/nvim-treesitter",
    "rcarriga/nvim-notify",
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    arg = "leetcode.nvim",

    lang = "cpp",

    cn = { -- leetcode.cn
      enabled = false,
      translator = true,
      translate_problems = true,
    },

    storage = {
      home = vim.fn.stdpath("data") .. "/leetcode",
      cache = vim.fn.stdpath("cache") .. "/leetcode",
    },

    plugins = {
      non_standalone = false,
    },

    logging = true,

    injector = {
      ["cpp"] = {
        before = {
          "#include <vector>",
          "#include <string>",
          "#include <algorithms>",
          "#include <unordered_map",
          "using namespace std;",
        },
      },
    },

    cache = {
      update_interval = 60 * 60 * 24 * 7, -- 7 days
    },

    console = {
      open_on_runcode = true,

      dir = "row",

      size = {
        width = "90%",
        height = "75%",
      },

      result = {
        size = "60%",
      },

      testcase = {
        virt_text = true,

        size = "40%",
      },
    },

    description = {
      position = "left",

      width = "40%",

      show_stats = true,
    },

    hooks = {
      ["enter"] = {},

      ["question_enter"] = {},

      ["leave"] = {},
    },

    keys = {
      toggle = { "q" },
      confirm = { "<CR>" },

      reset_testcases = "r",
      use_testcase = "U",
      focus_testcases = "H",
      focus_result = "L",
    },

    theme = {},

    image_support = false,
  },
  {
    "ThePrimeagen/vim-be-good",
  },
}
