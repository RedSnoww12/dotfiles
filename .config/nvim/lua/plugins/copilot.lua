return {
    {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({
                filetype = {
                    ["*"] = true,
                },
            })
        end,
    },
}
