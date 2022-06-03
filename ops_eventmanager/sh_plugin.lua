local PLUGIN = PLUGIN

PLUGIN.name = "ops_eventmanager"
PLUGIN.description = "Impulse event manager "
PLUGIN.author = "vingard, Ported by: Stalker"

ix.util.Include("setup/sh_setup.lua")
ix.util.Include("cl_editor.lua")
ix.util.Include("cl_scenes.lua")
ix.util.Include("sv_npcs.lua")
ix.util.Include("sv_net.lua")
ix.util.Include("sv_eventplayer.lua")
ix.util.Include("sv_editor.lua")
ix.util.Include("sh_main.lua")
ix.util.Include("sh_eventmanager.lua")
ix.util.Include("sh_config.lua")
ix.util.Include("cl_net.lua")
ix.util.Include("cl_editor.lua")


local meta = FindMetaTable("Player")

function meta:AllowScenePVSControl(bool)
    self.allowPVS = bool

    if not bool then
        self.extraPVS = nil
        self.extraPVS2 = nil
    end
end
