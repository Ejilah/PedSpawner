# PedSpawner
A script that allows you to place static NPCs around the map in FiveM

![Example of NPC](https://cdn.discordapp.com/attachments/686521233101291541/747103148363087912/2020-08-23_15_39_12-FiveM_-_Elijahs_Dev_Server.png)

### Use
* Download the script and move it into your resource folder.
* Add ```start pedSpawner``` into your server.cfg.
* Run the server and the NPC will spawn at the coordinates specified in the config file.

## The Config
```lua
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
```lua
["example"] = {
        ["ped"] = "s_m_y_marine_01",
        ["coords"] = {
            [1] = {
                ["x"] = 475.84,
                ["y"] = -1528.76,
                ["z"] = 28.35,
                ["h"] = -40.5,
            },
        },
    },
```
    
* You will need to add something like the example above just before the last ```}``` under the ```Config.Location```
* The above example will an NPC directly infront of the one already within the config file

# Reporting Problems
* Create an issue report and I'll have it fixed ASAP.
* Another option would be to create the fix yourself and do a pull request with said fix.
