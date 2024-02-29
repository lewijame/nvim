return {
    {
        "github/copilot.vim",
    },
    {
        "Exafunction/codeium.vim",
        tag = "1.6.20",
        config = function()
            local portal_url = string.format("%q", os.getenv("CODEIUM_URL"))
            local api_url = string.format("%q", os.getenv("CODEIUM_URL_API"))
            vim.cmd(
                string.format("let g:codeium_server_config = {'portal_url': %s, 'api_url': %s}", portal_url, api_url)
            )
            vim.keymap.set("i", "<S-Space>", function()
                return vim.fn["codeium#CycleCompletions"](1)
            end, { expr = true, silent = true })
            vim.keymap.set("i", "<M-Space>", function()
                return vim.fn["codeium#CycleCompletions"](-1)
            end, { expr = true, silent = true })
            vim.keymap.set("i", "X", function()
                return vim.fn["codeium#Clear"]()
            end, { expr = true, silent = true })
        end,
    },
}
