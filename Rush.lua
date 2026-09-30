local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Rush",

    -- GitHub .rbxm file
    Model = "https://github.com/Ilikerobloxdoors/Rush-Doors/blob/main/Rush%20Doors%20Original.rbxm",

    Speed = 175,
    DelayTime = 3.5,

    HeightOffset = 0,
    CanKill = true,
    KillRange = 40,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1.3,
    },

    Cycles = {
        Min = 1,
        Max = 1,
        WaitTime = 1,
    },

    CamShake = {
        true,
        {5, 30, 0.2, 1.1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://10483855823",
            Image2 = "rbxassetid://10483999903",

            Shake = false,

            Sound1 = {
                116282238939992,
                {Volume = 1},
            },

            Sound2 = {
                116282238939992,
                {Volume = 1},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                true,
                Min = 4,
                Max = 4,
            },
        },
    },

    CustomDialog = {
        "You died to Rush..."
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Rush spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Rush despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Rush started moving")
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Rush finished rebound")
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Rush entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Rush")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Rush")
end

Creator.runEntity(entity)
