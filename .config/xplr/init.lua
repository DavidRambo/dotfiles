version = "0.19.4"
-- ### Node Types -------------------------------------------------------------
--
-- This section defines how to deal with different kinds of nodes (files,
-- directories, symlinks etc.) based on their properties.
--
-- One node can fall into multiple categories. For example, a node can have the
-- *extension* `md`, and also be a *file*. In that case, the properties from
-- the more  specific category i.e. *extension* will be used.
--
-- This can be configured using the `xplr.config.node_types` Lua API.

-- The style for the directory nodes
--
-- Type: [Style](https://xplr.dev/en/style)
xplr.config.node_types.directory.style = {
  fg = "Cyan",
  add_modifiers = { "Bold" },
}

-- Metadata for the directory nodes.
-- You can set as many metadata as you want.
--
-- Type: nullable string
--
-- Example:
--
-- ```lua
-- xplr.config.node_types.directory.meta.foo = "foo"
-- xplr.config.node_types.directory.meta.bar = "bar"
-- ```
xplr.config.node_types.directory.meta.icon = ""

-- The style for the file nodes.
--
-- Type: [Style](https://xplr.dev/en/style)
xplr.config.node_types.file.style = {
  fg = "Gray"
}

-- Metadata for the file nodes.
-- You can set as many metadata as you want.
--
-- Type: nullable string
--
-- Example:
--
-- ```lua
-- xplr.config.node_types.file.meta.foo = "foo"
-- xplr.config.node_types.file.meta.bar = "bar"
-- ```
-- xplr.config.node_types.file.meta.icon = ""

local home = os.getenv("HOME")
package.path = home
.. "/.config/xplr/plugins/?/init.lua;"
.. home
.. "/.config/xplr/plugins/?.lua;"
.. package.path

require"icons".setup()
-- xplr.config.node_types.extension.py = { meta = { icon = "" }, }
xplr.config.node_types.extension.scm = { meta = { icon = "λ" }, }
-- xplr.config.node_types.extension.c = { meta = { icon = "" }, }

