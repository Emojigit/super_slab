super_slab = {}

function super_slab.register_slab_core(id,name,tiles,groups)
	minetest.register_node(id,{
		description = name.." Super Slab",
		drawtype = "nodebox",
		tiles = tiles,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.5, 0.5},
		},
		groups = groups
	})
end

function super_slab.register_slab(nodename)
	local def = table.copy(minetest.registered_nodes[nodename])
	local id = nodename.."_super_slab"
	local name = def.description
	local tiles = def.tiles
	local groups = def.groups
	super_slab.register_slab_core(id,name,tiles,groups)
end

function super_slab.register_slab_other_mod(nodename)
	local def = table.copy(minetest.registered_nodes[nodename])
	local id = ":"..nodename.."_super_slab"
	local name = def.description
	local tiles = def.tiles
	local groups = def.groups
	super_slab.register_slab_core(id,name,tiles,groups)
end

super_slab.register_slab_other_mod("default:wood")
super_slab.register_slab_other_mod("default:stone")
super_slab.register_slab_other_mod("default:stonebrick")
