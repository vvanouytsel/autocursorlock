local frame = CreateFrame("Frame")

local function lockCursor()
    local k,v = "ClipCursor"
    v = C_CVar.GetCVar(k)
    C_CVar.SetCVar(k, 0)
    C_CVar.SetCVar(k, 1)
    print("AutoCursorLock: Cursor has been locked to screen.")
end

frame:RegisterEvent("PLAYER_LOGIN")
frame:SetScript("OnEvent", lockCursor)
