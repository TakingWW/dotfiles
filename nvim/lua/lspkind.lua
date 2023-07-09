local lspkind = {}
local fmt = string.format

local kind_presets = {
  default = {
    Text = "󰉿",
    Method = "󰆧",
    Function = "󰊕",
    Constructor = "",
    Field = "󰜢",
    Variable = "󰀫",
    Class = "󰠱",
    Interface = "",
    Module = "",
    Property = "󰜢",
    Unit = "󰑭",
    Value = "󰎠",
    Enum = "",
    Keyword = "󰌋",
    Snippet = "",
    Color = "󰏘",
    File = "󰈙",
    Reference = "󰈇",
    Folder = "󰉋",
    EnumMember = "",
    Constant = "󰏿",
    Struct = "󰙅",
    Event = "",
    Operator = "󰆕",
    TypeParameter = "",
	}
}

local kind_order = {
  "Text",
  "Method",
  "Function",
  "Constructor",
  "Field",
  "Variable",
  "Class",
  "Interface",
  "Module",
  "Property",
  "Unit",
  "Value",
  "Enum",
  "Keyword",
  "Snippet",
  "Color",
  "File",
  "Reference",
  "Folder",
  "EnumMember",
  "Constant",
  "Struct",
  "Event",
  "Operator",
  "TypeParameter",
}
local len = 25

function lspkind.init(opts)
  local symbol_map = kind_presets['default']
  local symbols = {}
  for i = 1, len do
    local name = kind_order[i]
	kind = symbol_map[name]
    symbols[i] = fmt("%s %s", kind, name)
  end

  for k, v in pairs(symbols) do
    require("vim.lsp.protocol").CompletionItemKind[k] = v
  end
end

return lspkind
