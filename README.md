# PedSpawner
A script that allows you to place static NPC around the map in FiveM

### Use
* Download the script and move it into your resource folder.
* Add ```start pedSpawner``` into your server.cfg.
* Run the server and the NPC will spawn at the coordinates specified in the config file.

## The Config
```
Config = {}

Config.Locations = {
    ["dealer"] = {
        ["ped"] = "s_m_y_dealer_01",
        ["coords"] = {
            [1] = {
                ["x"] = 474.84,
                ["y"] = -1528.76,
                ["z"] = 28.35,
                ["h"] = -40.5,
            },
        },
    },
}


Config.EnablePeds = true --Enables/Disables Ped Spawning

Config.FreezePeds = true --Enables/Disables if the peds are frozen in place

Config.GodPeds = true --Enables/Disables if the peds can be killed
```

### Configuration
To add your own NPC you will need to go inside the config.lua file and add a new location and NPC.
```
["example"] = {
        ["ped"] = "s_m_y_marine_01",
        ["coords"] = {
            [1] = {
                ["x"] = 470.84,
                ["y"] = -1528.76,
                ["z"] = 28.35,
                ["h"] = -40.5,
            },
        },
    },
```
    
* You will need to add something like the example above just before the last ```}``` under the ```Config.Location```
