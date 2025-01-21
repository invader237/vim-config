local masonplug = {
    "cpplint",
    "phpmd",
    "stylua",
    "ts-standard",
    "asmfmt",
    "eslint_d",
    "luacheck",
}

return {
    "williamboman/mason.nvim",
    lazy = false,
    opts = {
        ensure_installed = masonplug,
    },
    config = function(_, opts)
        local mason = require("mason")
        local mason_registry = require("mason-registry")

        -- Configuration de base
        mason.setup()

        -- Forcer l'installation des outils définis
        for _, tool in ipairs(opts.ensure_installed) do
            local package = mason_registry.get_package(tool)
            if not package:is_installed() then
                package:install()
            end
        end
    end,
}
