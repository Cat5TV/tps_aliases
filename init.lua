local gold = "default:goldblock"
local diamond = "default:diamondblock"

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

-- replace technic machines
  {"technic:lv_electric_furnace", gold},
  {"technic:lv_electric_furnace_active", gold},
  {"technic:mv_electric_furnace", diamond},
  {"technic:mv_electric_furnace_active", diamond},
  {"technic:coal_alloy_furnace", gold},
  {"technic:coal_alloy_furnace_active", gold},
  {"technic:alloy_furnace", gold},
  {"technic:alloy_furnace_active", gold},
  {"technic:mv_alloy_furnace", diamond},
  {"technic:mv_alloy_furnace_active", diamond},
  {"technic:tool_workshop", gold},
  {"technic:grinder", gold},
  {"technic:grinder_active", gold},
  {"technic:mv_grinder", diamond},
  {"technic:mv_grinder_active", diamond},
  {"technic:extractor", gold},
  {"technic:extractor_active", gold},
  {"technic:mv_extractor", diamond},
  {"technic:mv_extractor_active", diamond},
  {"technic:compressor", gold},
  {"technic:compressor_active", gold},
  {"technic:mv_compressor", diamond},
  {"technic:mv_compressor_active", diamond},
  {"technic:cnc", gold},
  {"technic:cnc_active", gold},
  {"technic:mv_centrifuge", diamond},
  {"technic:mv_centrifuge_active", diamond},
}

-- change row[1] into row[2] on map
for _, row in pairs(alias) do
  minetest.register_alias(row[1], row[2])
end
