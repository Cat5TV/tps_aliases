local gold = "default:goldblock"
local steel = "default:steelblock"
local diamond = "default:diamondblock"
local air = "air"

local alias = {
  {"path6alt:junglewood", "default:junglewood"},
-- remove vines
  {"vines:side_middle", "air"},
  {"vines:side_end", "air"},
  {"vines:root_middle", "air"},
  {"vines:root_end", "air"},
  {"vines:jungle_middle", "air"},
  {"vines:jungle_end", "air"},
  {"vines:vine_middle", "air"},
  {"vines:vine_end", "air"},
  {"vines:willow_middle", "air"},
  {"vines:willow_end", "air"},

--[[
 
-- replace pipeworks nodes
	{"pipeworks:pipe_3_empty", "air"},
	{"pipeworks:autocrafter", gold},
	{"pipeworks:valve_on_empty", steel},
	{"pipeworks:valve_off_empty", steel},
	{"pipeworks:valve_on_loaded", steel},
	{"pipeworks:flow_sensor_empty", steel},
	{"pipeworks:flow_sensor_loaded", steel},
	{"pipeworks:spigot", gold},
	{"pipeworks:spigot_pouring", gold},
	{"pipeworks:entry_panel_empty", gold},
	{"pipeworks:entry_panel_loaded", gold},
	{"pipeworks:grating", gold},
	{"pipeworks:pump_on", gold},
	{"pipeworks:pump_off", gold},
	{"pipeworks:fountainhead", gold},
	{"pipeworks:fountainhead_pouring", gold},
	{"pipeworks:steel_block_embedded_tube", gold},
	{"pipeworks:steel_pane_embedded_tube", gold},
	{"pipeworks:expansion_tank_0", steel},
	{"pipeworks:expansion_tank_1", steel},
	{"pipeworks:expansion_tank_2", steel},
	{"pipeworks:expansion_tank_3", steel},
	{"pipeworks:expansion_tank_4", steel},
	{"pipeworks:expansion_tank_5", steel},
	{"pipeworks:expansion_tank_6", steel},
	{"pipeworks:expansion_tank_7", steel},
	{"pipeworks:expansion_tank_8", steel},
	{"pipeworks:expansion_tank_9", steel},
	{"pipeworks:expansion_tank_10", steel},
	{"pipeworks:storage_tank_0", steel},
	{"pipeworks:storage_tank_1", steel},
	{"pipeworks:storage_tank_2", steel},
	{"pipeworks:storage_tank_3", steel},
	{"pipeworks:storage_tank_4", steel},
	{"pipeworks:storage_tank_5", steel},
	{"pipeworks:storage_tank_6", steel},
	{"pipeworks:storage_tank_7", steel},
	{"pipeworks:storage_tank_8", steel},
	{"pipeworks:storage_tank_9", steel},
	{"pipeworks:storage_tank_10", steel},
	{"pipeworks:trashcan", gold},
--]]
}

-- change row[1] into row[2] on map
for _, row in pairs(alias) do
  minetest.register_alias(row[1], row[2])
end

-- Purge technic nodes (turn them to air) using the conf setting. Default is false.
local tps_aliases_purge_technic = minetest.setting_getbool("tps_aliases_purge_technic") or false
if tps_aliases_purge_technic == true then
	local technic_alias = {
	  {"technic:lv_electric_furnace", air},
	  {"technic:lv_electric_furnace_active", air},
	  {"technic:mv_electric_furnace", air},
	  {"technic:mv_electric_furnace_active", air},
	  {"technic:coal_alloy_furnace", air},
	  {"technic:coal_alloy_furnace_active", air},
	  {"technic:alloy_furnace", air},
	  {"technic:alloy_furnace_active", air},
	  {"technic:mv_alloy_furnace", air},
	  {"technic:mv_alloy_furnace_active", air},
	  {"technic:tool_workshop", air},
	  {"technic:grinder", air},
	  {"technic:grinder_active", air},
	  {"technic:mv_grinder", air},
	  {"technic:mv_grinder_active", air},
	  {"technic:extractor", air},
	  {"technic:extractor_active", air},
	  {"technic:mv_extractor", air},
	  {"technic:mv_extractor_active", air},
	  {"technic:compressor", air},
	  {"technic:compressor_active", air},
	  {"technic:mv_compressor", air},
	  {"technic:mv_compressor_active", air},
	  {"technic:cnc", air},
	  {"technic:cnc_active", air},
	  {"technic:mv_centrifuge", air},
	  {"technic:mv_centrifuge_active", air},
	  {"technic:lv_cable", air},
	  {"technic:switching_station", air},
	  {"technic:lv_battery_box8", air},
	  {"technic:lv_grinder", air},
	  {"technic:mv_cable", air},
	  {"technic:hv_cable", air},
	  

		
	}
	for _, row in pairs(technic_alias) do
	  minetest.register_alias(row[1], row[2])
	end
end
