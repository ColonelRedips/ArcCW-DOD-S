SWEP.Base = "arccw_base"
SWEP.Spawnable = true -- this obviously has to be set to true
SWEP.Category = "ArcCW - DOD:S" -- edit this if you like
SWEP.AdminOnly = false

SWEP.PrintName = "Government .45"
SWEP.TrueName = "M1911A1"

SWEP.Trivia_Class = "Pistol"
SWEP.Trivia_Desc = "One of the first semi-automatic pistols, this design was a staple and lasted over a century. God created man, but Samuel Colt made them equal."
SWEP.Trivia_Manufacturer = "Browning Arms"
SWEP.Trivia_Calibre = ".45 ACP"
SWEP.Trivia_Mechanism = "Short Recoil"
SWEP.Trivia_Country = "USA"
SWEP.Trivia_Year = 1911

SWEP.Slot = 1

-- This is what governs the True Name feature. You can do extra stuff here such as changing a fictonal manufacturer to a real one!
if GetConVar("arccw_truenames"):GetBool() then
    SWEP.PrintName = SWEP.TrueName
    SWEP.Trivia_Manufacturer = "Colt Manufacturing Company"
end


SWEP.Slot = 1

if GetConVar("arccw_truenames"):GetBool() then SWEP.PrintName = SWEP.TrueName end

SWEP.UseHands = true

SWEP.ViewModel = "models/weapons/arccw/c_dod_m1911.mdl"
SWEP.WorldModel = "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV = 56

SWEP.Damage = 32
SWEP.DamageMin = 17 -- damage done at maximum range
SWEP.Range = 40 -- in METRES
SWEP.Penetration = 3
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil -- entity to fire, if any
SWEP.MuzzleVelocity = 250 -- projectile or phys bullet muzzle velocity
-- IN M/S

SWEP.CanFireUnderwater = true

SWEP.TracerNum = 1 -- tracer every X
SWEP.TracerCol = Color(255, 25, 25)
SWEP.TracerWidth = 3

SWEP.ChamberSize = 1 -- how many rounds can be chambered.
SWEP.Primary.ClipSize = 7 -- DefaultClip is automatically set.
SWEP.ExtendedClipSize = 10
SWEP.ReducedClipSize = 5

SWEP.Recoil = 0.9
SWEP.RecoilSide = 0.3
SWEP.RecoilRise = 2

SWEP.Delay = 60 / 500 -- 60 / RPM.
SWEP.Num = 1 -- number of shots per trigger pull.
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 70

SWEP.AccuracyMOA = 13 -- accuracy in Minutes of Angle. There are 60 MOA in a degree.
SWEP.HipDispersion = 300 -- inaccuracy added by hip firing.
SWEP.MoveDispersion = 200

SWEP.ShootWhileSprint = false

SWEP.Primary.Ammo = "pistol" -- what ammo type the gun uses
SWEP.MagID = "m1911" -- the magazine pool this gun draws from

SWEP.ShootVol = 115 -- volume of shoot sound
SWEP.ShootPitch = 100 -- pitch of shoot sound

SWEP.ShootSound = "weapons/arccw/usp/usp_unsilenced_03.wav"
SWEP.ShootSoundSilenced = "weapons/arccw/usp/usp_01.wav"
SWEP.DistantShootSound = "weapons/arccw/hkp2000/hkp2000-1-distant.wav"

SWEP.MuzzleEffect = "muzzleflash_pistol"
SWEP.ShellModel = "models/shells/shell_9mm.mdl"
SWEP.ShellScale = 1.5

SWEP.MuzzleEffectAttachment = 1 -- which attachment to put the muzzle on
SWEP.CaseEffectAttachment = 2 -- which attachment to put the case effect on

SWEP.SightTime = 0.175

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.75

SWEP.BarrelLength = 18

SWEP.BulletBones = { -- the bone that represents bullets in gun/mag
    -- [0] = "bulletchamber",
    -- [1] = "bullet1"
}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.CaseBones = {}

SWEP.IronSightStruct = {
    Pos = Vector(-3.85, -6, 3.68),
    Ang = Angle(0.449, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "", -- sound that plays when switching to this sight
}

SWEP.HoldtypeHolstered = "normal"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "revolver"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL

SWEP.ActivePos = Vector(0, 0, 1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.HolsterPos = Vector(-2, -7.145, -11.561)
SWEP.HolsterAng = Angle(36.533, 0, 0)

SWEP.BarrelOffsetSighted = Vector(0, 0, -1)
SWEP.BarrelOffsetHip = Vector(2, 0, -2)

SWEP.AttachmentElements = {
    ["stock"] = {
        VMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Bone = "ValveBiped.Colt_1911_base",
                Offset = {
                    pos = Vector(0, 1.5, 3.25),
                    ang = Angle(-90, 0, -90)
                }
            }
        },
        WMElements = {
            {
                Model = "models/weapons/arccw/atts/stock_fab.mdl",
                Offset = {
                    pos = Vector(0, 1, 0),
                    ang = Angle(0, -4.211, 0)
                }
            }
        }
    }
}

SWEP.ExtraSightDist = 2

SWEP.Attachments = {
    {
        PrintName = "Optic", -- print name
        DefaultAttName = "Iron Sights",
        Slot = "optic_lp", -- what kind of attachments can fit here, can be string or table
        Bone = "ValveBiped.slide", -- relevant bone any attachments will be mostly referring to
        Offset = {
            vpos = Vector(0.05, -0.201, 0.2), -- offset that the attachment will be relative to the bone
            vang = Angle(0, -90, 0),
            wpos = Vector(4.129, 1.476, -4.216),
            wang = Angle(-2.829, -4.902, 180)
        },
        CorrectiveAng = Angle(0, 90, 0),
        CorrectivePos = Vector(-12, 8, 2)
    },
    {
        PrintName = "Muzzle",
        DefaultAttName = "Standard Muzzle",
        Slot = "muzzle",
        Bone = "ValveBiped.attachpos",
        Offset = {
            vpos = Vector(0.17, -0.05, 3.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(9.829, 2.275, -3.828),
            wang = Angle(-2, -4.211, 0)
        },
    },
    {
        PrintName = "Underbarrel",
        Slot = {"foregrip_pistol", "style_pistol"},
        Bone = "ValveBiped.attachpos",
        Offset = {
            vpos = Vector(0.17, 1, -0.5),
            vang = Angle(90, 0, -90),
            wpos = Vector(7.238, 1.641, -2.622),
            wang = Angle(90, -4.211, 0)
        },
    },
    {
        PrintName = "Tactical",
        Slot = "tac_pistol",
        Bone = "ValveBiped.attachpos",
        Offset = {
            vpos = Vector(0.17, 0.5, 2),
            vang = Angle(90, 0, -90),
            wpos = Vector(11.711, 2.187, -3.064),
            wang = Angle(0, -4.211, 180)
        },
    },
    {
        PrintName = "Grip",
        Slot = "grip",
        DefaultAttName = "Standard Grip"
    },
    {
        PrintName = "Stock",
        Slot = "stock",
        DefaultAttName = "No Stock",
        InstalledEles = {"stock"},
    },
    {
        PrintName = "Fire Group",
        Slot = "fcg",
        DefaultAttName = "Standard FCG"
    },
    {
        PrintName = "Ammo Type",
        Slot = "ammo_bullet"
    },
    {
        PrintName = "Perk",
        Slot = "perk"
    },
}

SWEP.Animations = {
    ["idle"] = false,
    ["draw_empty"] = {
        Source = "draw_empty",
        Time = 0.75,
    },
    ["draw"] = {
        Source = "draw",
        Time = 0.75,
    },
    ["ready"] = {
        Source = "ready",
        Time = 1.2,
    },
    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_empty"] = {
        Source = "shoot_empty",
        Time = 1,
        ShellEjectAt = 0,
    },
    ["fire_iron"] = {
        Source = "shoot_irons",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["fire_iron_empty"] = {
        Source = "shoot_irons_empty",
        Time = 0.5,
        ShellEjectAt = 0,
    },
    ["reload"] = {
        Source = "reload",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
    },
    ["reload_empty"] = {
        Source = "reload_noshoot",
        Time = 2.5,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        LHIK = true,
        LHIKIn = 1,
        LHIKOut = 0.75,
    },
}