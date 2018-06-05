-- Screwdrivers
-- Additional screwdrivers using other materials
-- by dhausmig

screwdrivers = {}
-- Stainless Steel Screwdriver
if (minetest.registered_items["technic:stainless_steel_ingot"] ~= nil) then
   minetest.register_tool("screwdrivers:screwdriver_stainless", {
	   description = "Stainless Steel Screwdriver (left-click rotates face, right-click rotates axis)",
   	inventory_image = "screwdrivers_stainless.png",
	   on_use = function(itemstack, user, pointed_thing)
		   screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 400)
   		return itemstack
	   end,
   	on_place = function(itemstack, user, pointed_thing)
	   	screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 400)
		   return itemstack
   	end,
   })

   minetest.register_craft({
	   output = "screwdrivers:screwdriver_stainless",
   	recipe = {
	   	{"technic:stainless_steel_ingot"},
		   {"group:stick"}
   	}
   })
end

-- Mese Screwdriver
minetest.register_tool("screwdrivers:screwdriver_mese", {
	description = "Mese Screwdriver (left-click rotates face, right-click rotates axis)",
	inventory_image = "screwdrivers_mese.png",
	on_use = function(itemstack, user, pointed_thing)
		screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 800)
		return itemstack
	end,
	on_place = function(itemstack, user, pointed_thing)
		screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 800)
		return itemstack
	end,
})

minetest.register_craft({
	output = "screwdrivers:screwdriver_mese",
	recipe = {
		{"default:mese_crystal"},
		{"group:stick"}
	}
})


-- Mithril Screwdriver
if (minetest.registered_items["moreores:mithril_ingot"] ~= nil) then
   minetest.register_tool("screwdrivers:screwdriver_mithril", {
	   description = "Mithril Screwdriver (left-click rotates face, right-click rotates axis)",
   	inventory_image = "screwdrivers_mithril.png",
	   on_use = function(itemstack, user, pointed_thing)
		   screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 1600)
   		return itemstack
	   end,
   	on_place = function(itemstack, user, pointed_thing)
	   	screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 1600)
		   return itemstack
   	end,
   })

   minetest.register_craft({
	   output = "screwdrivers:screwdriver_mithril",
   	recipe = {
	   	{"moreores:mithril_ingot"},
		   {"group:stick"}
   	}
   })
end


-- Crystal Screwdriver
if (minetest.registered_items["ethereal:crystal_ingot"] ~= nil) then
   minetest.register_tool("screwdrivers:screwdriver_crystal", {
	   description = "Crystal Screwdriver (left-click rotates face, right-click rotates axis)",
   	inventory_image = "screwdrivers_crystal.png",
	   on_use = function(itemstack, user, pointed_thing)
		   screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_FACE, 3200)
   		return itemstack
	   end,
   	on_place = function(itemstack, user, pointed_thing)
	   	screwdriver.handler(itemstack, user, pointed_thing, screwdriver.ROTATE_AXIS, 3200)
		   return itemstack
   	end,
   })

   minetest.register_craft({
	   output = "screwdrivers:screwdriver_crystal",
   	recipe = {
	   	{"ethereal:crystal_ingot"},
		   {"default:steel_ingot"}
   	}
   })
end
