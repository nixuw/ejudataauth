package = "kong-plugin-ejudataauth"
version = "1.0-1"
source = {
   url = "git://github.com/nixuw/ejudataauth",
   tag = "1.0",
}
description = {
   summary = "data fetch auth plugin",
   detailed = [[
      Help client to get the data.
   ]],
   homepage = "https://github.com/nixuw",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}

build = {
   type = "builtin",
   modules = {
      ["kong.plugins.ejudataauth.handler"] = "kong/plugins/ejudataauth/handler.lua",
      ["kong.plugins.ejudataauth.schema"] = "kong/plugins/ejudataauth/schema.lua"
     },

   }

