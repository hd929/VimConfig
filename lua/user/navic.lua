local status_ok, navic = pcall(require, "nvim-navic")
if not status_ok then
  return
end

local icons = require "user.icons"

navic.setup {
  icons = {
    File = icons.kind.File,
    Module = icons.kind.Module,
    Namespace = icons.kind.Module,
    Package = icons.ui.Package,
    Class = icons.kind.Class,
    Method = icons.kind.Method,
    Property = icons.kind.Property,
    Field = icons.kind.Field,
    Constructor = icons.kind.Constructor,
    Enum = icons.kind.Enum,
    Interface = icons.kind.Interface,
    Function = icons.kind.Function,
    Variable = icons.kind.Variable,
    Constant = icons.kind.Constructor,
    String = " ",
    Number = icons.type.Number,
    Boolean = icons.type.Boolean,
    Array = icons.type.Array,
    Object = icons.type.Object,
    Key = icons.type.String,
    Null = icons.type.Boolean,
    EnumMember = icons.kind.EnumMember,
    Struct = icons.kind.Struct,
    Event = icons.kind.Event,
    Operator = icons.kind.Operator,
    TypeParameter = icons.kind.TypeParameter,
  },
  highlight = true,
  separator = " " .. icons.ui.ChevronRight .. " ",
  depth_limit = 0,
  depth_limit_indicator = "..",
}
