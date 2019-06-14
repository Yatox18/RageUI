---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Dylan Malandain.
--- DateTime: 21/04/2019 21:20
---

print("\n")
print("Github download : https://github.com/iTexZoz/RageUI/releases")
print("[Feature Suggestions] : https://github.com/iTexZoz/RageUI/issues/1")
print("[Frequently asked question] : https://github.com/iTexZoz/RageUI/issues/2")
print("RageUI wiki : https://github.com/iTexZoz/NativeUILua-Reloaded/wiki")
print("\n")

---round
---@param num number
---@param numDecimalPlaces number
---@return number
---@public
function math.round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

---starts
---@param String string
---@param Start number
---@return number
---@public
function string.starts(String, Start)
    return string.sub(String, 1, string.len(Start)) == Start
end

---@type table
RageUI = {}

---@type table
RageUI.Menus = setmetatable({}, RageUI.Menus)

---@type table
---@return boolean
RageUI.Menus.__call = function()
    return true
end

---@type table
RageUI.Menus.__index = RageUI.Menus

---@type table
RageUI.CurrentMenu = nil

---@type table
RageUI.NextMenu = nil

---@type number
RageUI.Options = 0

---@type number
RageUI.ItemOffset = 0
---@type table

RageUI.Colours = {
    PureWhite = {255, 255, 255, 255},
    White = {240, 240, 240, 255},
    Black = {0, 0, 0, 255},
    Grey = {155, 155, 155, 255},
    GreyLight = {205, 205, 205, 255},
    GreyDark = {77, 77, 77, 255},
    Red = {224, 50, 50, 255},
    RedLight = {240, 153, 153, 255},
    RedDark = {112, 25, 25, 255},
    Blue = {93, 182, 229, 255},
    BlueLight = {174, 219, 242, 255},
    BlueDark = {47, 92, 115, 255},
    Yellow = {240, 200, 80, 255},
    YellowLight = {254, 235, 169, 255},
    YellowDark = {126, 107, 41, 255},
    Orange = {255, 133, 85, 255},
    OrangeLight = {255, 194, 170, 255},
    OrangeDark = {127, 66, 42, 255},
    Green = {114, 204, 114, 255},
    GreenLight = {185, 230, 185, 255},
    GreenDark = {57, 102, 57, 255},
    Purple = {132, 102, 226, 255},
    PurpleLight = {192, 179, 239, 255},
    PurpleDark = {67, 57, 111, 255},
    Pink = {203, 54, 148, 255},
    RadarHealth = {53, 154, 71, 255},
    RadarArmour = {93, 182, 229, 255},
    RadarDamage = {235, 36, 39, 255},
    NetPlayer1 = {194, 80, 80, 255},
    NetPlayer2 = {156, 110, 175, 255},
    NetPlayer3 = {255, 123, 196, 255},
    NetPlayer4 = {247, 159, 123, 255},
    NetPlayer5 = {178, 144, 132, 255},
    NetPlayer6 = {141, 206, 167, 255},
    NetPlayer7 = {113, 169, 175, 255},
    NetPlayer8 = {211, 209, 231, 255},
    NetPlayer9 = {144, 127, 153, 255},
    NetPlayer10 = {106, 196, 191, 255},
    NetPlayer11 = {214, 196, 153, 255},
    NetPlayer12 = {234, 142, 80, 255},
    NetPlayer13 = {152, 203, 234, 255},
    NetPlayer14 = {178, 98, 135, 255},
    NetPlayer15 = {144, 142, 122, 255},
    NetPlayer16 = {166, 117, 94, 255},
    NetPlayer17 = {175, 168, 168, 255},
    NetPlayer18 = {232, 142, 155, 255},
    NetPlayer19 = {187, 214, 91, 255},
    NetPlayer20 = {12, 123, 86, 255},
    NetPlayer21 = {123, 196, 255, 255},
    NetPlayer22 = {171, 60, 230, 255},
    NetPlayer23 = {206, 169, 13, 255},
    NetPlayer24 = {71, 99, 173, 255},
    NetPlayer25 = {42, 166, 185, 255},
    NetPlayer26 = {186, 157, 125, 255},
    NetPlayer27 = {201, 225, 255, 255},
    NetPlayer28 = {240, 240, 150, 255},
    NetPlayer29 = {237, 140, 161, 255},
    NetPlayer30 = {249, 138, 138, 255},
    NetPlayer31 = {252, 239, 166, 255},
    NetPlayer32 = {240, 240, 240, 255},
    SimpleBlipDefault = {159, 201, 166, 255},
    MenuBlue = {140, 140, 140, 255},
    MenuGreyLight = {140, 140, 140, 255},
    MenuBlueExtraDark = {40, 40, 40, 255},
    MenuYellow = {240, 160, 0, 255},
    MenuYellowDark = {240, 160, 0, 255},
    MenuGreen = {240, 160, 0, 255},
    MenuGrey = {140, 140, 140, 255},
    MenuGreyDark = {60, 60, 60, 255},
    MenuHighlight = {30, 30, 30, 255},
    MenuStandard = {140, 140, 140, 255},
    MenuDimmed = {75, 75, 75, 255},
    MenuExtraDimmed = {50, 50, 50, 255},
    BriefTitle = {95, 95, 95, 255},
    MidGreyMp = {100, 100, 100, 255},
    NetPlayer1Dark = {93, 39, 39, 255},
    NetPlayer2Dark = {77, 55, 89, 255},
    NetPlayer3Dark = {124, 62, 99, 255},
    NetPlayer4Dark = {120, 80, 80, 255},
    NetPlayer5Dark = {87, 72, 66, 255},
    NetPlayer6Dark = {74, 103, 83, 255},
    NetPlayer7Dark = {60, 85, 88, 255},
    NetPlayer8Dark = {105, 105, 64, 255},
    NetPlayer9Dark = {72, 63, 76, 255},
    NetPlayer10Dark = {53, 98, 95, 255},
    NetPlayer11Dark = {107, 98, 76, 255},
    NetPlayer12Dark = {117, 71, 40, 255},
    NetPlayer13Dark = {76, 101, 117, 255},
    NetPlayer14Dark = {65, 35, 47, 255},
    NetPlayer15Dark = {72, 71, 61, 255},
    NetPlayer16Dark = {85, 58, 47, 255},
    NetPlayer17Dark = {87, 84, 84, 255},
    NetPlayer18Dark = {116, 71, 77, 255},
    NetPlayer19Dark = {93, 107, 45, 255},
    NetPlayer20Dark = {6, 61, 43, 255},
    NetPlayer21Dark = {61, 98, 127, 255},
    NetPlayer22Dark = {85, 30, 115, 255},
    NetPlayer23Dark = {103, 84, 6, 255},
    NetPlayer24Dark = {35, 49, 86, 255},
    NetPlayer25Dark = {21, 83, 92, 255},
    NetPlayer26Dark = {93, 98, 62, 255},
    NetPlayer27Dark = {100, 112, 127, 255},
    NetPlayer28Dark = {120, 120, 75, 255},
    NetPlayer29Dark = {152, 76, 93, 255},
    NetPlayer30Dark = {124, 69, 69, 255},
    NetPlayer31Dark = {10, 43, 50, 255},
    NetPlayer32Dark = {95, 95, 10, 255},
    Bronze = {180, 130, 97, 255},
    Silver = {150, 153, 161, 255},
    Gold = {214, 181, 99, 255},
    Platinum = {166, 221, 190, 255},
    Gang1 = {29, 100, 153, 255},
    Gang2 = {214, 116, 15, 255},
    Gang3 = {135, 125, 142, 255},
    Gang4 = {229, 119, 185, 255},
    SameCrew = {252, 239, 166, 255},
    Freemode = {45, 110, 185, 255},
    PauseBg = {0, 0, 0, 255},
    Friendly = {93, 182, 229, 255},
    Enemy = {194, 80, 80, 255},
    Location = {240, 200, 80, 255},
    Pickup = {114, 204, 114, 255},
    PauseSingleplayer = {114, 204, 114, 255},
    FreemodeDark = {22, 55, 92, 255},
    InactiveMission = {154, 154, 154, 255},
    Damage = {194, 80, 80, 255},
    PinkLight = {252, 115, 201, 255},
    PmMitemHighlight = {252, 177, 49, 255},
    ScriptVariable = {0, 0, 0, 255},
    Yoga = {109, 247, 204, 255},
    Tennis = {241, 101, 34, 255},
    Golf = {214, 189, 97, 255},
    ShootingRange = {112, 25, 25, 255},
    FlightSchool = {47, 92, 115, 255},
    NorthBlue = {93, 182, 229, 255},
    SocialClub = {234, 153, 28, 255},
    PlatformBlue = {11, 55, 123, 255},
    PlatformGreen = {146, 200, 62, 255},
    PlatformGrey = {234, 153, 28, 255},
    FacebookBlue = {66, 89, 148, 255},
    IngameBg = {0, 0, 0, 255},
    Darts = {114, 204, 114, 255},
    Waypoint = {164, 76, 242, 255},
    Michael = {101, 180, 212, 255},
    Franklin = {171, 237, 171, 255},
    Trevor = {255, 163, 87, 255},
    GolfP1 = {240, 240, 240, 255},
    GolfP2 = {235, 239, 30, 255},
    GolfP3 = {255, 149, 14, 255},
    GolfP4 = {246, 60, 161, 255},
    WaypointLight = {210, 166, 249, 255},
    WaypointDark = {82, 38, 121, 255},
    PanelLight = {0, 0, 0, 255},
    MichaelDark = {72, 103, 116, 255},
    FranklinDark = {85, 118, 85, 255},
    TrevorDark = {127, 81, 43, 255},
    ObjectiveRoute = {240, 200, 80, 255},
    PausemapTint = {0, 0, 0, 255},
    PauseDeselect = {100, 100, 100, 255},
    PmWeaponsPurchasable = {45, 110, 185, 255},
    PmWeaponsLocked = {240, 240, 240, 255},
    ScreenBg = {0, 0, 0, 255},
    Chop = {224, 50, 50, 255},
    PausemapTintHalf = {0, 0, 0, 255},
    NorthBlueOfficial = {0, 71, 133, 255},
    ScriptVariable2 = {0, 0, 0, 255},
    H = {33, 118, 37, 255},
    HDark = {37, 102, 40, 255},
    T = {234, 153, 28, 255},
    TDark = {225, 140, 8, 255},
    HShard = {20, 40, 0, 255},
    ControllerMichael = {48, 255, 255, 255},
    ControllerFranklin = {48, 255, 0, 255},
    ControllerTrevor = {176, 80, 0, 255},
    ControllerChop = {127, 0, 0, 255},
    VideoEditorVideo = {53, 166, 224, 255},
    VideoEditorAudio = {162, 79, 157, 255},
    VideoEditorText = {104, 192, 141, 255},
    HbBlue = {29, 100, 153, 255},
    HbYellow = {234, 153, 28, 255},
    VideoEditorScore = {240, 160, 1, 255},
    VideoEditorAudioFadeout = {59, 34, 57, 255},
    VideoEditorTextFadeout = {41, 68, 53, 255},
    VideoEditorScoreFadeout = {82, 58, 10, 255},
    HeistBackground = {37, 102, 40, 255},
    VideoEditorAmbient = {240, 200, 80, 255},
    VideoEditorAmbientFadeout = {80, 70, 34, 255},
    Gb = {255, 133, 85, 255},
    G = {255, 194, 170, 255},
    B = {255, 133, 85, 255},
    LowFlow = {240, 200, 80, 255},
    LowFlowDark = {126, 107, 41, 255},
    G1 = {247, 159, 123, 255},
    G2 = {226, 134, 187, 255},
    G3 = {239, 238, 151, 255},
    G4 = {113, 169, 175, 255},
    G5 = {160, 140, 193, 255},
    G6 = {141, 206, 167, 255},
    G7 = {181, 214, 234, 255},
    G8 = {178, 144, 132, 255},
    G9 = {0, 132, 114, 255},
    G10 = {216, 85, 117, 255},
    G11 = {30, 100, 152, 255},
    G12 = {43, 181, 117, 255},
    G13 = {233, 141, 79, 255},
    G14 = {137, 210, 215, 255},
    G15 = {134, 125, 141, 255},
    Adversary = {109, 34, 33, 255},
    DegenRed = {255, 0, 0, 255},
    DegenYellow = {255, 255, 0, 255},
    DegenGreen = {0, 255, 0, 255},
    DegenCyan = {0, 255, 255, 255},
    DegenBlue = {0, 0, 255, 255},
    DegenMagenta = {255, 0, 255, 255},
    Stunt1 = {38, 136, 234, 255},
    Stunt2 = {224, 50, 50, 255},
}
---@type table
RageUI.Settings = {
    Controls = {
        Up = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 172 },
                { 1, 172 },
                { 2, 172 },
                { 0, 241 },
                { 1, 241 },
                { 2, 241 },
            },
        },
        Down = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 173 },
                { 1, 173 },
                { 2, 173 },
                { 0, 242 },
                { 1, 242 },
                { 2, 242 },
            },
        },
        Left = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 174 },
                { 1, 174 },
                { 2, 174 },
            },
        },
        Right = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 175 },
                { 1, 175 },
                { 2, 175 },
            },
        },
        Select = {
            Enabled = true,
            Pressed = false,
            Active = false,
            Keys = {
                { 0, 201 },
                { 1, 201 },
                { 2, 201 },
            },
        },
        Back = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 177 },
                { 1, 177 },
                { 2, 177 },
                { 0, 199 },
                { 1, 199 },
                { 2, 199 },
            },
        },
        Click = {
            Enabled = true,
            Active = false,
            Pressed = false,
            Keys = {
                { 0, 24 },
            },
        },
        Enabled = {
            Controller = {
                { 0, 2 }, -- Look Up and Down
                { 0, 1 }, -- Look Left and Right
                { 0, 25 }, -- Aim
                { 0, 24 }, -- Attack
            },
            Keyboard = {
                { 0, 201 }, -- Select
                { 0, 195 }, -- X axis
                { 0, 196 }, -- Y axis
                { 0, 187 }, -- Down
                { 0, 188 }, -- Up
                { 0, 189 }, -- Left
                { 0, 190 }, -- Right
                { 0, 202 }, -- Back
                { 0, 217 }, -- Select
                { 0, 242 }, -- Scroll down
                { 0, 241 }, -- Scroll up
                { 0, 239 }, -- Cursor X
                { 0, 240 }, -- Cursor Y
                { 0, 31 }, -- Move Up and Down
                { 0, 30 }, -- Move Left and Right
                { 0, 21 }, -- Sprint
                { 0, 22 }, -- Jump
                { 0, 23 }, -- Enter
                { 0, 75 }, -- Exit Vehicle
                { 0, 71 }, -- Accelerate Vehicle
                { 0, 72 }, -- Vehicle Brake
                { 0, 59 }, -- Move Vehicle Left and Right
                { 0, 89 }, -- Fly Yaw Left
                { 0, 9 }, -- Fly Left and Right
                { 0, 8 }, -- Fly Up and Down
                { 0, 90 }, -- Fly Yaw Right
                { 0, 76 }, -- Vehicle Handbrake
            },
        },
    },
    Audio = {
        Library = "HUD_FRONTEND_DEFAULT_SOUNDSET",
        UpDown = "NAV_UP_DOWN",
        LeftRight = "NAV_LEFT_RIGHT",
        Select = "SELECT",
        Back = "BACK",
        Error = "ERROR",
        Slider = "CONTINUOUS_SLIDER",
        Id = nil,
    },
    Items = {
        Title = {
            Background = { Width = 431, Height = 107 },
            Text = { X = 215, Y = 20, Scale = 1.15 },
        },
        Subtitle = {
            Background = { Width = 431, Height = 37 },
            Text = { X = 8, Y = 3, Scale = 0.35 },
            PreText = { X = 425, Y = 3, Scale = 0.35 },
        },
        Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 0, Width = 431 },
        Navigation = {
            Rectangle = { Width = 431, Height = 18 },
            Offset = 5,
            Arrows = { Dictionary = "commonmenu", Texture = "shop_arrows_upanddown", X = 190, Y = -6, Width = 50, Height = 50 },
        },
        Description = {
            Bar = { Y = 4, Width = 431, Height = 4 },
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 30 },
            Text = { X = 8, Y = 10, Scale = 0.35 },
        },
    },
    Panels = {
        Grid = {
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 275 },
            Grid = { Dictionary = "pause_menu_pages_char_mom_dad", Texture = "nose_grid", X = 115.5, Y = 47.5, Width = 200, Height = 200 },
            Circle = { Dictionary = "mpinventory", Texture = "in_world_circle", X = 115.5, Y = 47.5, Width = 20, Height = 20 },
            Text = {
                Top = { X = 215.5, Y = 15, Scale = 0.35 },
                Bottom = { X = 215.5, Y = 250, Scale = 0.35 },
                Left = { X = 57.75, Y = 130, Scale = 0.35 },
                Right = { X = 373.25, Y = 130, Scale = 0.35 },
            },
        },

        Percentage = {
            Background = { Dictionary = "commonmenu", Texture = "gradient_bgd", Y = 4, Width = 431, Height = 76 },
            Bar = { X = 9, Y = 50, Width = 413, Height = 10 },
            Text = {
                Left = { X = 25, Y = 15, Scale = 0.35 },
                Middle = { X = 215.5, Y = 15, Scale = 0.35 },
                Right = { X = 398, Y = 15, Scale = 0.35 },
            },
        },
    },
}

---PlaySound
---@param Library string
---@param Sound string
---@param IsLooped boolean
---@return nil
---@public
function RageUI.PlaySound(Library, Sound, IsLooped)
    if not IsLooped then
        PlaySoundFrontend(-1, Sound, Library, true)
    else
        if not RageUI.Settings.Audio.Id then
            Citizen.CreateThread(function()
                RageUI.Settings.Audio.Id = GetSoundId()

                PlaySoundFrontend(RageUI.Settings.Audio.Id, Sound, Library, true)

                Citizen.Wait(0.01)

                StopSound(RageUI.Settings.Audio.Id)

                ReleaseSoundId(RageUI.Settings.Audio.Id)

                RageUI.Settings.Audio.Id = nil
            end)
        end
    end
end

---Visible
---@param Menu function
---@param Value boolean
---@return table
---@public
function RageUI.Visible(Menu, Value)
    if Menu ~= nil then
        if Menu() then
            if type(Value) == "boolean" then
                Menu.Open = Value
                if Menu.Open then
                    Menu:UpdateInstructionalButtons(Value);
                    RageUI.CurrentMenu = Menu
                    RageUI.Options = 0
                    RageUI.ItemOffset = 0
                else
                    RageUI.CurrentMenu = nil
                    RageUI.Options = 0
                    RageUI.ItemOffset = 0
                end
            else
                return Menu.Open
            end
        end
    end
end

---Title
---@return nil
---@public
---@param Enabled boolean
function RageUI.Banner(Enabled)
    if type(Enabled) == "boolean" then
        if Enabled == true then
            if RageUI.CurrentMenu ~= nil then
                if RageUI.CurrentMenu() then
                    if not RageUI.CurrentMenu.SafeZoneSize then
                        RageUI.CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }

                        if RageUI.CurrentMenu.Safezone then
                            RageUI.CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()
                            SetScriptGfxAlign(76, 84)
                            SetScriptGfxAlignParams(0, 0, 0, 0)
                            --SetScriptGfxAlignParams
                        end
                    end

                    if RageUI.CurrentMenu.Sprite then
                        RenderSprite(RageUI.CurrentMenu.Sprite.Dictionary, RageUI.CurrentMenu.Sprite.Texture, RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, nil, RageUI.CurrentMenu.Sprite.Color.R, RageUI.CurrentMenu.Sprite.Color.G, RageUI.CurrentMenu.Sprite.Color.B, RageUI.CurrentMenu.Sprite.Color.A)
                    else
                        RenderRectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y, RageUI.Settings.Items.Title.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Title.Background.Height, RageUI.CurrentMenu.Rectangle.R, RageUI.CurrentMenu.Rectangle.G, RageUI.CurrentMenu.Rectangle.B, RageUI.CurrentMenu.Rectangle.A)
                    end

                    RenderText(RageUI.CurrentMenu.Title, RageUI.CurrentMenu.X + RageUI.Settings.Items.Title.Text.X + (RageUI.CurrentMenu.WidthOffset / 2), RageUI.CurrentMenu.Y + RageUI.Settings.Items.Title.Text.Y, 1, RageUI.Settings.Items.Title.Text.Scale, 255, 255, 255, 255, 1)

                    RageUI.ItemOffset = RageUI.ItemOffset + RageUI.Settings.Items.Title.Background.Height
                end
            end
        end
    else
        error("Enabled is not boolean")
    end
end
---CloseAll -- TODO 
---@return nil
---@public
-- function RageUI:CloseAll()
--     RageUI.PlaySound(RageUI.Settings.Audio.Library, RageUI.Settings.Audio.Back)
--     RageUI.NextMenu = nil
--     RageUI.Visible(RageUI.CurrentMenu, false)
-- end

---Subtitle
---@return nil
---@public
function RageUI.Subtitle()
    if RageUI.CurrentMenu ~= nil then
        if RageUI.CurrentMenu() then
            if not RageUI.CurrentMenu.SafeZoneSize then
                RageUI.CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }

                if RageUI.CurrentMenu.Safezone then
                    RageUI.CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()

                    SetScriptGfxAlign(76, 84)
                    SetScriptGfxAlignParams(0, 0, 0, 0)
                end
            end

            if RageUI.CurrentMenu.Subtitle ~= "" then
                RenderRectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.ItemOffset, RageUI.Settings.Items.Subtitle.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Subtitle.Background.Height + RageUI.CurrentMenu.SubtitleHeight, 0, 0, 0, 255)
                RenderText(RageUI.CurrentMenu.Subtitle, RageUI.CurrentMenu.X + RageUI.Settings.Items.Subtitle.Text.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Subtitle.Text.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.Text.Scale, 245, 245, 245, 255, nil, false, false, RageUI.Settings.Items.Subtitle.Background.Width + RageUI.CurrentMenu.WidthOffset)
                if RageUI.CurrentMenu.PageCounter == nil then
                    if RageUI.CurrentMenu.Options >= RageUI.CurrentMenu.Pagination.Total + 1 then
                        RenderText(RageUI.CurrentMenu.PageCounterColour .. RageUI.CurrentMenu.Index .. " / " .. RageUI.CurrentMenu.Options, RageUI.CurrentMenu.X + RageUI.Settings.Items.Subtitle.PreText.X + RageUI.CurrentMenu.WidthOffset, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Subtitle.PreText.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.PreText.Scale, 245, 245, 245, 255, 2)
                    end
                else
                    RenderText(RageUI.CurrentMenu.PageCounter, RageUI.CurrentMenu.X + RageUI.Settings.Items.Subtitle.PreText.X + RageUI.CurrentMenu.WidthOffset, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Subtitle.PreText.Y + RageUI.ItemOffset, 0, RageUI.Settings.Items.Subtitle.PreText.Scale, 245, 245, 245, 255, 2)
                end

                RageUI.ItemOffset = RageUI.ItemOffset + RageUI.Settings.Items.Subtitle.Background.Height
            end
        end
    end
end

---Background
---@return nil
---@public
function RageUI.Background()
    if RageUI.CurrentMenu ~= nil then
        if RageUI.CurrentMenu() then
            if not RageUI.CurrentMenu.SafeZoneSize then
                RageUI.CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }

                if RageUI.CurrentMenu.Safezone then
                    RageUI.CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()

                    SetScriptGfxAlign(76, 84)
                    SetScriptGfxAlignParams(0, 0, 0, 0)
                end
            end

            SetScriptGfxDrawOrder(0)
            RenderSprite(RageUI.Settings.Items.Background.Dictionary, RageUI.Settings.Items.Background.Texture, RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Background.Y + RageUI.CurrentMenu.SubtitleHeight, RageUI.Settings.Items.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.ItemOffset, 0, 0, 0, 255)
            SetScriptGfxDrawOrder(1)
        end
    end
end

---Description
---@return nil
---@public
function RageUI.Description()
    if RageUI.CurrentMenu ~= nil and RageUI.CurrentMenu.Description ~= nil then
        if RageUI.CurrentMenu() then
            if not RageUI.CurrentMenu.SafeZoneSize then
                RageUI.CurrentMenu.SafeZoneSize = { X = 0, Y = 0 }

                if RageUI.CurrentMenu.Safezone then
                    RageUI.CurrentMenu.SafeZoneSize = RageUI.GetSafeZoneBounds()

                    SetScriptGfxAlign(76, 84)
                    SetScriptGfxAlignParams(0, 0, 0, 0)
                end
            end

            RenderRectangle(RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Bar.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Description.Bar.Width + RageUI.CurrentMenu.WidthOffset, RageUI.Settings.Items.Description.Bar.Height, 0, 0, 0, 255)
            RenderSprite(RageUI.Settings.Items.Description.Background.Dictionary, RageUI.Settings.Items.Description.Background.Texture, RageUI.CurrentMenu.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Background.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset, RageUI.Settings.Items.Description.Background.Width + RageUI.CurrentMenu.WidthOffset, RageUI.CurrentMenu.DescriptionHeight, 0, 0, 0, 255)
            RenderText(RageUI.CurrentMenu.Description, RageUI.CurrentMenu.X + RageUI.Settings.Items.Description.Text.X, RageUI.CurrentMenu.Y + RageUI.Settings.Items.Description.Text.Y + RageUI.CurrentMenu.SubtitleHeight + RageUI.ItemOffset, 0, RageUI.Settings.Items.Description.Text.Scale, 255, 255, 255, 255, nil, false, false, RageUI.Settings.Items.Description.Background.Width + RageUI.CurrentMenu.WidthOffset)

            RageUI.ItemOffset = RageUI.ItemOffset + RageUI.CurrentMenu.DescriptionHeight + RageUI.Settings.Items.Description.Bar.Y
        end
    end
end

function RageUI.Header()
    RageUI.Banner(true)
    RageUI.Subtitle()
end
---GoBack
---@return nil
---@public
function RageUI.GoBack()
    if RageUI.CurrentMenu ~= nil then
        RageUI.PlaySound(RageUI.Settings.Audio.Library, RageUI.Settings.Audio.Back)
        if RageUI.CurrentMenu.Parent ~= nil then
            if RageUI.CurrentMenu.Parent() then
                RageUI.NextMenu = RageUI.CurrentMenu.Parent
            else
                RageUI.NextMenu = nil
                RageUI.Visible(RageUI.CurrentMenu, false)
            end
        else
            RageUI.NextMenu = nil
            RageUI.Visible(RageUI.CurrentMenu, false)
        end
    end
end
---Render
---@param instructionalButton boolean
---@return nil
---@public
function RageUI.Render(instructionalButton)
    if RageUI.CurrentMenu ~= nil then
        if RageUI.CurrentMenu() then

            if RageUI.CurrentMenu.Safezone then
                ResetScriptGfxAlign()
            end

            if (instructionalButton) then
                DrawScaleformMovieFullscreen(RageUI.CurrentMenu.InstructionalScaleform, 255, 255, 255, 255, 0)
            end

            RageUI.CurrentMenu.Options = RageUI.Options
            RageUI.CurrentMenu.SafeZoneSize = nil

            RageUI.Controls()

            RageUI.Options = 0
            RageUI.ItemOffset = 0

            if RageUI.CurrentMenu.Controls.Back.Pressed then
                RageUI.CurrentMenu.Controls.Back.Pressed = false

                RageUI.PlaySound(RageUI.Settings.Audio.Library, RageUI.Settings.Audio.Back)
                if RageUI.CurrentMenu.Closed ~= nil then
                    RageUI.CurrentMenu.Closed()
                end
                if RageUI.CurrentMenu.Parent ~= nil then
                    if RageUI.CurrentMenu.Parent() then
                        RageUI.NextMenu = RageUI.CurrentMenu.Parent
                    else
                        RageUI.NextMenu = nil
                        RageUI.Visible(RageUI.CurrentMenu, false)
                    end
                else
                    RageUI.NextMenu = nil
                    RageUI.Visible(RageUI.CurrentMenu, false)
                end
            end

            if RageUI.NextMenu ~= nil then
                if RageUI.NextMenu() then
                    RageUI.Visible(RageUI.CurrentMenu, false)
                    RageUI.Visible(RageUI.NextMenu, true)
                    RageUI.CurrentMenu.Controls.Select.Active = false
                end
            end
        end
    end
end

---DrawContent
---@param items function
---@param panels function
function RageUI.DrawContent(settings, items, panels)
    if (settings.header ~= nil) then
        RageUI.Header(settings.header);
    else
        RageUI.Header(true);
    end
    if (items ~= nil) then
        items()
    end
    RageUI.Background();
    RageUI.Navigation();
    RageUI.Description();
    if (panels ~= nil) then
        panels()
    end
    if (settings.instructionalButton ~= nil) then
        RageUI.Render(settings.instructionalButton)
    else
        RageUI.Render(true)
    end
end
