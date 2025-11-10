screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
windowPos = {
  x = screenW / 2 - 1300 / zoom / 2,
  y = screenH / 2 - 815 / zoom / 2,
  w = 1300 / zoom,
  h = 815 / zoom
}
windows = {
  background = false,
  selectCategory = {}
}
self = {}
admins_table = {}
staffhex = {
  [4] = "770000",
  [3] = "8426b8",
  [2] = "a80000",
  [17] = "0077ff",
  [15] = "00b30f",
  [1] = "00eaff",
  [11] = "00ff9e",
  [25] = "801f4e",
  [35] = "004099"
}
staffhex1 = {
  Owner = "770000",
  ["Project Manager"] = "004099",
  Developer = "8426b8",
  ["Administrator RCON"] = "801f4e",
  Administrator = "a80000",
  ["Global Moderator"] = "0077ff",
  Moderator = "00b30f",
  Support = "00eaff",
  Helper = "00ff9e"
}
prezenty = {
  [1] = "Moonbeam 4.0 V16",
  [2] = "Silnik 4.0 V10 do dowolnego pojazdu",
  [3] = "Audi RS2 4.0 V8",
  [4] = "Discord nitro 1msc",
  [5] = "Discord nitro 1msc",
  [6] = "9000pp",
  [7] = "9000pp",
  [8] = "300z\197\130 psc/blik",
  [9] = "300z\197\130 psc/blik",
  [10] = "300z\197\130 psc/blik"
}
function window()
  if windows.background == true then
    dxDrawRoundedRectangle(windowPos.x - 1 / zoom, windowPos.y - 1 / zoom, windowPos.w + 2 / zoom, windowPos.h + 2 / zoom, 20 / zoom, tocolor(255, 187, 0, 255), false)
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, windowPos.w, windowPos.h, 20 / zoom, tocolor(25, 25, 25, 255), false)
    dxDrawRoundedRectangle(windowPos.x, windowPos.y, 235 / zoom, windowPos.h, 20 / zoom, tocolor(35, 35, 35, 255), false)
    dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 2 / zoom, tocolor(55, 55, 55, 255), false)
    xY = 0
    for _FORV_7_, _FORV_8_ in ipairs(category) do
      xY = xY + 1
      if isMouseIn(windowPos.x, windowPos.y + 60 / zoom * (xY - 1), 227 / zoom, 60 / zoom) then
        dxDrawRoundedRectangle(windowPos.x, windowPos.y + 60 / zoom * (xY - 1), 227 / zoom, 60 / zoom, 20 / zoom, tocolor(25, 25, 25, 150), false)
        dxDrawImage(windowPos.x + 10 / zoom, windowPos.y + 10 / zoom + 60 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(200, 200, 200, 255), false)
        dxDrawText(_FORV_8_.text, windowPos.x + 70 / zoom, windowPos.y - 140 / zoom + 120 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, false, false)
      else
        dxDrawImage(windowPos.x + 10 / zoom, windowPos.y + 10 / zoom + 60 / zoom * (xY - 1), 45 / zoom, 45 / zoom, _FORV_8_.img, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText(_FORV_8_.text, windowPos.x + 70 / zoom, windowPos.y - 140 / zoom + 120 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
      end
    end
    if isMouseIn(windowPos.x + 10 / zoom, windowPos.y + 770 / zoom, 30 / zoom, 30 / zoom) then
      dxDrawImage(windowPos.x + 9 / zoom, windowPos.y + 769 / zoom, 32 / zoom, 32 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    else
      dxDrawImage(windowPos.x + 10 / zoom, windowPos.y + 770 / zoom, 30 / zoom, 30 / zoom, textures.cross, 0, 0, 0, tocolor(255, 255, 255, 255), false)
    end
    if windows.selectCategory == "ADMINISTRACJA" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 215 / zoom, windowPos.y + 750 / zoom, windowPos.w - 215 / zoom, 65 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.usersAdm_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("ADMINISTRACJA", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      liczbaAdm = {
        helperzy = 0,
        supporci = 0,
        moderatorzy = 0,
        gmody = 0,
        administratorzy = 0,
        developerzy = 0,
        projectmanager = 0,
        rcony = 0
      }
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(admins_table) do
        if _FORV_7_ >= _UPVALUE0_ and _FORV_7_ <= _UPVALUE1_ then
          xY = xY + 1
          if isMouseIn(windowPos.x + 240 / zoom, windowPos.y + 76 / zoom + 75 / zoom * (xY - 1), 1052 / zoom, 70 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 240 / zoom, windowPos.y + 76 / zoom + 75 / zoom * (xY - 1), 1052 / zoom, 70 / zoom, 10 / zoom, tocolor(32, 32, 32, 250), false)
          else
            dxDrawRoundedRectangle(windowPos.x + 240 / zoom, windowPos.y + 76 / zoom + 75 / zoom * (xY - 1), 1052 / zoom, 70 / zoom, 10 / zoom, tocolor(35, 35, 35, 250), false)
          end
          dxDrawImage(windowPos.x + 242 / zoom, windowPos.y + 78.5 / zoom + 75 / zoom * (xY - 1), 65 / zoom, 65 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
          for _FORV_14_, _FORV_15_ in ipairs(avatar_table) do
            if _FORV_15_[1] == _FORV_8_.uid and _FORV_15_[2] then
              dxDrawImage(windowPos.x + 242 / zoom, windowPos.y + 78.5 / zoom + 75 / zoom * (xY - 1), 65 / zoom, 65 / zoom, _FORV_15_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
            end
          end
          dxDrawText("#" .. staffhex[tonumber(_FORV_8_.level)] .. "" .. _FORV_8_.date .. "", windowPos.x + 312 / zoom, windowPos.y - 15 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("light18"), "left", "center", false, false, false, true, false)
          if getPlayerFromName(_FORV_8_.date) or getPlayerFromName("Nieznajomy#" .. _FORV_8_.uid) then
            dxDrawText("#b5b5b5Online: #00910ateraz", windowPos.x + 312 / zoom, windowPos.y + 50 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          else
            for _FORV_14_, _FORV_15_ in ipairs(lastOnline_table) do
              if _FORV_15_[1] == _FORV_8_.uid and _FORV_15_[2] then
                dxDrawText("#b5b5b5Online: #999999" .. dateName(_FORV_15_[2]) .. "", windowPos.x + 312 / zoom, windowPos.y + 50 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
              end
            end
          end
          dxDrawText("Reporty", windowPos.x + 600 / zoom, windowPos.y - 5 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          if _FORV_8_.level == 11 then
            if 200 > _FORV_8_.reportyTyg then
              hex = "#ff0000"
            else
              hex = "#00ff22"
            end
          elseif _FORV_8_.reportyTyg < 100 then
            hex = "#ff0000"
          else
            hex = "#00ff22"
          end
          dxDrawText("" .. hex .. "" .. _FORV_8_.reportyTyg, windowPos.x + 600 / zoom, windowPos.y + 50 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          dxDrawText("Wszystkie reporty", windowPos.x + 750 / zoom, windowPos.y - 5 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          dxDrawText("#ffbb00" .. _FORV_8_.reporty, windowPos.x + 750 / zoom, windowPos.y + 50 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "left", "center", false, false, false, true, false)
          dxDrawText([[
#e8e8e8W administracji od:
#a8a8a8]] .. string.sub(_FORV_8_.added, 1, 10) .. "", windowPos.x, windowPos.y + 25 / zoom + 150 / zoom * (xY - 1), windowPos.x + 362 / zoom + 920 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal15"), "right", "center", false, false, false, true, false)
        end
      end
      for _FORV_7_, _FORV_8_ in ipairs(admins_table) do
        if _FORV_8_.level == 11 then
          liczbaAdm.helperzy = liczbaAdm.helperzy + 1
        end
        if _FORV_8_.level == 1 then
          liczbaAdm.supporci = liczbaAdm.supporci + 1
        end
        if _FORV_8_.level == 15 then
          liczbaAdm.moderatorzy = liczbaAdm.moderatorzy + 1
        end
        if _FORV_8_.level == 17 then
          liczbaAdm.gmody = liczbaAdm.gmody + 1
        end
        if _FORV_8_.level == 2 then
          liczbaAdm.administratorzy = liczbaAdm.administratorzy + 1
        end
        if _FORV_8_.level == 3 then
          liczbaAdm.developerzy = liczbaAdm.developerzy + 1
        end
        if _FORV_8_.level == 35 then
          liczbaAdm.projectmanager = liczbaAdm.projectmanager + 1
        end
        if _FORV_8_.level == 25 then
          liczbaAdm.rcony = liczbaAdm.rcony + 1
        end
      end
      dxDrawText("#" .. staffhex[11] .. "HELPERZY #e8e8e8" .. liczbaAdm.helperzy, windowPos.x + 240 / zoom, windowPos.y + 1330 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[1] .. "SUPPORCI #e8e8e8" .. liczbaAdm.supporci, windowPos.x + 240 / zoom, windowPos.y + 1390 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[15] .. "MODERATORZY #e8e8e8" .. liczbaAdm.moderatorzy, windowPos.x + 345 / zoom, windowPos.y + 1330 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[17] .. "G-MODERATORZY #e8e8e8" .. liczbaAdm.gmody, windowPos.x + 345 / zoom, windowPos.y + 1390 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[2] .. "ADMINISTRATORZY #e8e8e8" .. liczbaAdm.administratorzy, windowPos.x + 485 / zoom, windowPos.y + 1330 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[3] .. "DEVELOPERZY #e8e8e8" .. liczbaAdm.developerzy, windowPos.x + 485 / zoom, windowPos.y + 1390 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[35] .. "PM #e8e8e8" .. liczbaAdm.projectmanager, windowPos.x + 640 / zoom, windowPos.y + 1390 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[25] .. "A RCON #e8e8e8" .. liczbaAdm.rcony, windowPos.x + 640 / zoom, windowPos.y + 1332 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "left", "center", false, false, false, true, false)
      dxDrawText("#" .. staffhex[4] .. "OWNER #e8e8e81", windowPos.x + 720 / zoom, windowPos.y + 1332 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, true, false)
      dxDrawText("#ffbb00WSZYSCY #e8e8e8" .. liczbaAdm.helperzy + liczbaAdm.supporci + liczbaAdm.moderatorzy + liczbaAdm.gmody + liczbaAdm.administratorzy + liczbaAdm.developerzy + liczbaAdm.projectmanager + liczbaAdm.rcony + 1 .. "", windowPos.x + 720 / zoom, windowPos.y + 1390 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
      if getElementData(localPlayer, "player:level") then
        dxDrawRoundedRectangle(windowPos.x + 985 / zoom, windowPos.y + 759 / zoom, 300 / zoom, 46 / zoom, 15 / zoom, tocolor(22, 22, 22, 255))
        if 0 < exports.ST_gui:getCustomEditboxText("addAdmins"):len() then
          if isMouseIn(windowPos.x + 1239 / zoom, windowPos.y + 759 / zoom, 46 / zoom, 46 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 1239 / zoom, windowPos.y + 759 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(15, 15, 15, 255))
            dxDrawText("\226\156\148", windowPos.x + 1245 / zoom, windowPos.y + 1362 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 200, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
          else
            dxDrawRoundedRectangle(windowPos.x + 1239 / zoom, windowPos.y + 759 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(19, 19, 19, 255))
            dxDrawText("\226\156\148", windowPos.x + 1245 / zoom, windowPos.y + 1362 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 255, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
          end
        else
          dxDrawRoundedRectangle(windowPos.x + 1239 / zoom, windowPos.y + 759 / zoom, 46 / zoom, 46 / zoom, 15 / zoom, tocolor(19, 19, 19, 255))
          dxDrawText("\226\156\148", windowPos.x + 1245 / zoom, windowPos.y + 1362 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(50, 50, 50, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
        end
      end
    elseif windows.selectCategory == "ADMINISTRATOR" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 215 / zoom, windowPos.y + 750 / zoom, windowPos.w - 215 / zoom, 65 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.usersAdm_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawImage(windowPos.x + 245 / zoom, windowPos.y + 80 / zoom, 100 / zoom, 100 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) then
        dxDrawImage(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
      else
        dxDrawImage(windowPos.x + windowPos.w - 60 / zoom, windowPos.y + 18 / zoom, 40 / zoom, 40 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      end
      for _FORV_7_, _FORV_8_ in pairs(admins_table) do
        if selectUser == _FORV_8_.uid then
          dxDrawText("ADMINISTRATOR #fcba03" .. _FORV_8_.date, windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
          for _FORV_12_, _FORV_13_ in ipairs(avatar_table) do
            if _FORV_13_[1] == _FORV_8_.uid and _FORV_13_[2] then
              dxDrawImage(windowPos.x + 245 / zoom, windowPos.y + 80 / zoom, 100 / zoom, 100 / zoom, _FORV_13_[2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
            end
          end
          dxDrawText("#" .. staffhex[tonumber(_FORV_8_.level)] .. "" .. _FORV_8_.date, windowPos.x + 355 / zoom, windowPos.y + 0 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
          dxDrawText("UID: #" .. staffhex[tonumber(_FORV_8_.level)] .. "" .. _FORV_8_.uid, windowPos.x + 355 / zoom, windowPos.y + 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
          if getPlayerFromName(_FORV_8_.date) or getPlayerFromName("Nieznajomy#" .. _FORV_8_.uid) then
            statusOnline = "#00b50fTeraz"
            for _FORV_12_, _FORV_13_ in ipairs(lastOnline_table) do
              if _FORV_13_[1] == _FORV_8_.uid and _FORV_13_[3] then
                player_hours = secondsToClock(60 * _FORV_13_[3])
              end
            end
          else
            for _FORV_12_, _FORV_13_ in ipairs(lastOnline_table) do
              if _FORV_13_[1] == _FORV_8_.uid and _FORV_13_[2] and _FORV_13_[3] then
                statusOnline = "#919191" .. dateName(_FORV_13_[2])
                player_hours = secondsToClock(60 * _FORV_13_[3])
              end
            end
          end
          if _FORV_8_.level == 4 then
          elseif "Owner" == 35 then
          elseif "Project Manager" == 3 then
          elseif "Developer" == 25 then
          elseif "Administrator RCON" == 2 then
          elseif "Administrator" == 17 then
          elseif "Global Moderator" == 15 then
          elseif "Moderator" == 1 then
          elseif "Support" == 11 then
          end
          tableInfoUsers = {
            {
              name = "Online:",
              arg2 = statusOnline,
              zerowanie = false
            },
            {
              name = "Ranga:",
              arg2 = "#" .. staffhex[tonumber(_FORV_8_.level)] .. "" .. "Helper" .. ""
            },
            {
              name = "W administracji od:",
              arg2 = "#fcba03" .. _FORV_8_.added .. "#ffffff"
            },
            {
              name = "Og\195\179\197\130 reporty:",
              arg2 = "#fcba03" .. _FORV_8_.reporty .. "#ffffff"
            },
            {
              name = "Ostrze\197\188enia:",
              arg2 = "#fcba03" .. _FORV_8_.ostrzezenia .. "#ffffff / #fcba033"
            },
            {
              name = "Czas gry na serwerze:",
              arg2 = player_hours
            }
          }
          tableInfoUsers1 = {
            {
              name = "Ostrze\197\188enia:",
              arg2 = "#fcba03" .. _FORV_8_.warny .. ""
            },
            {
              name = "Prawa jazdy:",
              arg2 = "#fcba03" .. _FORV_8_.zpj .. ""
            },
            {
              name = "Kick'i:",
              arg2 = "#fcba03" .. _FORV_8_.kick .. ""
            },
            {
              name = "Bany:",
              arg2 = "#fcba03" .. _FORV_8_.bany .. ""
            },
            {
              name = "Mute:",
              arg2 = "#fcba03" .. _FORV_8_.mute .. ""
            }
          }
          xY = 0
          for _FORV_13_, _FORV_14_ in ipairs(tableInfoUsers) do
            xY = xY + 1
            dxDrawText(_FORV_14_.name .. " " .. _FORV_14_.arg2, windowPos.x + 255 / zoom, windowPos.y + 210 / zoom + 86 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
          end
          dxDrawRoundedRectangle(windowPos.x + 245 / zoom, windowPos.y + 450 / zoom, 350 / zoom, 290 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
          dxDrawText("STATYSTYKI KAR", windowPos.x + 260 / zoom, windowPos.y + 760 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
          xY = 0
          for _FORV_13_, _FORV_14_ in ipairs(tableInfoUsers1) do
            xY = xY + 1
            dxDrawText("\226\128\162 #e3e3e3" .. _FORV_14_.name .. " " .. _FORV_14_.arg2, windowPos.x + 265 / zoom, windowPos.y + 860 / zoom + 90 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "left", "center", false, false, false, true, false)
          end
          dxDrawRoundedRectangle(windowPos.x + 940 / zoom, windowPos.y + 450 / zoom, 350 / zoom, 290 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
          dxDrawScrollBar(#historyAdm_table, windowPos.x + 1270 / zoom, windowPos.y + 510 / zoom, 4 / zoom, 210 / zoom, m1, k1)
          dxDrawText("HISTORIA", windowPos.x + 955 / zoom, windowPos.y + 760 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
          xY = 0
          for _FORV_13_, _FORV_14_ in ipairs(historyAdm_table) do
            if _FORV_13_ >= k1 and _FORV_13_ <= n1 then
              xY = xY + 1
              if _FORV_14_.type == "awans" then
                typeText = "#00d924awans #ffffffna rang\196\153"
              elseif _FORV_14_.type == "degrad" then
                typeText = "#ff0000degrad #ffffffna rang\196\153"
              elseif _FORV_14_.type == "odejscie" then
                typeText = "odej\197\155cie"
              elseif _FORV_14_.type == "powrot" then
                typeText = "#00b558powr\195\179t #ffffffna rang\196\153"
              end
              if _FORV_14_.type == "odejscie" then
                dxDrawText("\226\128\162 #ff0000odej\197\155cie z administracji", windowPos.x + 960 / zoom, windowPos.y + 845 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
              else
                dxDrawText("\226\128\162 " .. typeText .. " #" .. staffhex1[_FORV_14_.rank] .. "" .. _FORV_14_.rank .. "", windowPos.x + 960 / zoom, windowPos.y + 845 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
              end
              dxDrawText("" .. _FORV_14_.date .. "", windowPos.x + 960 / zoom, windowPos.y + 890 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
              if getElementData(localPlayer, "player:level") then
                dxDrawText("X", windowPos.x + 1255 / zoom, windowPos.y + 845 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
              end
            end
          end
          if getElementData(localPlayer, "player:level") then
            dxDrawText("<    >", windowPos.x + 430 / zoom, windowPos.y + 555 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
            exports.ST_buttons:dxCreateButton("USU\197\131", windowPos.x + 905 / zoom, windowPos.y + 762 / zoom, 120 / zoom, 40 / zoom, 255, 1)
            exports.ST_buttons:dxCreateButton("DEGRADUJ", windowPos.x + 1035 / zoom, windowPos.y + 762 / zoom, 120 / zoom, 40 / zoom, 255, 1)
            exports.ST_buttons:dxCreateButton("AWANSUJ", windowPos.x + 1165 / zoom, windowPos.y + 762 / zoom, 120 / zoom, 40 / zoom, 255, 1)
            dxDrawText("+", windowPos.x + 1255 / zoom, windowPos.y + 760 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
            if windows.addHistoryAdm == true then
              dxDrawRoundedRectangle(windowPos.x + 940 / zoom, windowPos.y + 80 / zoom, 350 / zoom, 280 / zoom, 15 / zoom, tocolor(30, 30, 30, 255), false)
              dxDrawText("DODAWANIE HISTORII", windowPos.x + 955 / zoom, windowPos.y + 20 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
              if selfHistory.type == "awans" then
                typeText = "#00d924awans #ffffffna rang\196\153"
              elseif selfHistory.type == "degrad" then
                typeText = "#ff0000degrad #ffffffna rang\196\153"
              elseif selfHistory.type == "odejscie" then
                typeText = "odej\197\155cie"
              elseif selfHistory.type == "powrot" then
                typeText = "#00b558powr\195\179t #ffffffna rang\196\153"
              end
              if selfHistory.type == "odejscie" then
                dxDrawText("\226\128\162 #ff0000odej\197\155cie z administracji", windowPos.x + 960 / zoom, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
              else
                dxDrawText("\226\128\162 " .. typeText .. " #" .. staffhex1[selfHistory.rank] .. "" .. selfHistory.rank .. "", windowPos.x + 960 / zoom, windowPos.y + 100 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
              end
              if selfHistory.date == "normal" then
                dateText = "2022-" .. getRealTimeTak.month .. "-" .. getRealTimeTak.monthday .. ""
              end
              if exports.ST_gui:getCustomEditboxText("customDateHistory"):len() > 1 then
                dxDrawText(exports.ST_gui:getCustomEditboxText("customDateHistory"), windowPos.x + 960 / zoom, windowPos.y + 155 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
              else
                dxDrawText("" .. dateText .. "   #fcba03[ inne klik ]", windowPos.x + 960 / zoom, windowPos.y + 155 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font14"), "left", "center", false, false, false, true, false)
              end
              exports.ST_buttons:dxCreateButton("DODAJ", windowPos.x + 1050 / zoom, windowPos.y + 300 / zoom, 120 / zoom, 40 / zoom, 255, 1)
            end
          end
        end
      end
    elseif windows.selectCategory == "WYSZUKAJ GRACZA" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("WYSZUKAJ GRACZA", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 399 / zoom, windowPos.y + 199 / zoom, windowPos.w - 568 / zoom, windowPos.h - 398 / zoom, 20 / zoom, tocolor(60, 60, 60, 240), false)
      dxDrawRoundedRectangle(windowPos.x + 400 / zoom, windowPos.y + 200 / zoom, windowPos.w - 570 / zoom, windowPos.h - 400 / zoom, 20 / zoom, tocolor(20, 20, 20, 240), false)
      dxDrawText("WPISZ #fcba03UID #e6e6e6LUB #fcba03NICK #e6e6e6OSOBY, KT\195\147R\196\132 CHCESZ WYSZUKA\196\134", windowPos.x + 1150 / zoom, windowPos.y + 280 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("WYSZUKAJ", windowPos.x + 655 / zoom, windowPos.y + 480 / zoom, 200 / zoom, 60 / zoom, 255, 1)
    elseif windows.selectCategory == "WYSZUKAJ POJAZD" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.vehicle_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("WYSZUKAJ POJAZD", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 399 / zoom, windowPos.y + 199 / zoom, windowPos.w - 568 / zoom, windowPos.h - 398 / zoom, 20 / zoom, tocolor(60, 60, 60, 240), false)
      dxDrawRoundedRectangle(windowPos.x + 400 / zoom, windowPos.y + 200 / zoom, windowPos.w - 570 / zoom, windowPos.h - 400 / zoom, 20 / zoom, tocolor(20, 20, 20, 240), false)
      dxDrawText("WPISZ #fcba03ID #e6e6e6POJAZDU, KT\195\147REGO CHCESZ WYSZUKA\196\134", windowPos.x + 1150 / zoom, windowPos.y + 280 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("WYSZUKAJ", windowPos.x + 655 / zoom, windowPos.y + 480 / zoom, 200 / zoom, 60 / zoom, 255, 1)
    elseif windows.selectCategory == "INFORMACJE O GRACZU" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      if avatarPlayer then
        dxDrawImage(windowPos.x + 245 / zoom, windowPos.y + 80 / zoom, 100 / zoom, 100 / zoom, avatarPlayer, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("KONTO #00b803JEST PO\197\129\196\132CZONE #ffffffZ DISCORDEM", windowPos.x, windowPos.y - 126 / zoom, windowPos.x + 362 / zoom + 920 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
      else
        dxDrawImage(windowPos.x + 245 / zoom, windowPos.y + 80 / zoom, 100 / zoom, 100 / zoom, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
        dxDrawText("KONTO #b80000NIE JEST PO\197\129\196\132CZONE #ffffffZ DISCORDEM", windowPos.x, windowPos.y - 126 / zoom, windowPos.x + 362 / zoom + 920 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "right", "center", false, false, false, true, false)
      end
      for _FORV_7_, _FORV_8_ in ipairs(info_users) do
        dxDrawText("INFORMACJE O #fcba03" .. _FORV_8_.login .. "", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
        dxDrawText("" .. _FORV_8_.color_nickName .. "" .. _FORV_8_.login, windowPos.x + 355 / zoom, windowPos.y + 0 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font30"), "left", "center", false, false, false, true, false)
        dxDrawText("UID: " .. _FORV_8_.color_nickName .. "" .. _FORV_8_.id, windowPos.x + 355 / zoom, windowPos.y + 90 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(200, 200, 200, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "left", "center", false, false, false, true, false)
        if getPlayerFromName(_FORV_8_.login) or getPlayerFromName("Nieznajomy#" .. _FORV_8_.id) then
          statusOnline = "#00b50fOnline"
        else
          statusOnline = "#d10007Offline #a3a3a3od " .. dateName(_FORV_8_.last_online)
        end
        tableInfoUsers = {
          {
            name = "Status",
            arg2 = statusOnline,
            zerowanie = false
          },
          {
            name = "Pieni\196\133dze w bankomacie",
            arg2 = "#fcba03" .. przecinek(_FORV_8_.bank_money) .. " #ffffffPLN",
            zerowanie = _FORV_8_.bank_money,
            nameDataBase = "bank_money"
          },
          {
            name = "Pieni\196\133dze przy sobie",
            arg2 = "#fcba03" .. przecinek(moneyPlayer) .. " #ffffffPLN",
            zerowanie = moneyPlayer,
            nameDataBase = "money"
          },
          {
            name = "Og\195\179\197\130 zarobki",
            arg2 = "#fcba03" .. przecinek(_FORV_8_.ogol_zarobki) .. " #ffffffPLN",
            zerowanie = _FORV_8_.ogol_zarobki,
            nameDataBase = "ogol_zarobki"
          },
          {
            name = "Level",
            arg2 = "#fcba03" .. _FORV_8_.lvl .. "",
            zerowanie = _FORV_8_.lvl,
            nameDataBase = "lvl"
          },
          {
            name = "\197\129\196\133czny czas gry",
            arg2 = "#fcba03" .. secondsToClock(60 * _FORV_8_.hours),
            zerowanie = false
          },
          {
            name = "Rejestracja",
            arg2 = "#fcba03" .. _FORV_8_.registered .. "",
            zerowanie = false
          },
          {
            name = "Email",
            arg2 = "#fcba03" .. _FORV_8_.email .. "",
            zerowanie = false
          },
          {
            name = "Punkty premium",
            arg2 = "#fcba03" .. _FORV_8_.pp .. "",
            zerowanie = false
          },
          {
            name = "Organizacja",
            arg2 = "#fcba03" .. (organizationName or "Nie jest cz\197\130onkiem organizacji") .. "",
            zerowanie = false
          }
        }
        xY = 0
        for _FORV_13_, _FORV_14_ in ipairs(tableInfoUsers) do
          xY = xY + 1
          dxDrawText(_FORV_14_.name .. ": " .. _FORV_14_.arg2, windowPos.x + 255 / zoom, windowPos.y + 210 / zoom + 90 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
          if _FORV_14_.zerowanie then
            if _FORV_14_.zerowanie == 0 then
              dxDrawRoundedRectangle(windowPos.x + 238 / zoom, windowPos.y + 199 / zoom + 45 / zoom * (xY - 1), 12 / zoom, 12 / zoom, 5 / zoom, tocolor(55, 255, 55, 250), false)
            else
              dxDrawRoundedRectangle(windowPos.x + 238 / zoom, windowPos.y + 199 / zoom + 45 / zoom * (xY - 1), 12 / zoom, 12 / zoom, 5 / zoom, tocolor(255, 55, 55, 250), false)
              if isMouseIn(windowPos.x + 238 / zoom, windowPos.y + 199 / zoom + 45 / zoom * (xY - 1), 12 / zoom, 12 / zoom) and isCursorShowing() then
                cxs, cys = getCursorPosition()
                cxs, cys = screenW * cxs, screenH * cys
                dxDrawText("WYZERUJ", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
                dxDrawText("WYZERUJ", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              end
            end
          end
        end
        if _FORV_8_.pjA == 1 then
          pjA = "#00b50fTAK"
        else
          pjA = "#d10007NIE"
        end
        if _FORV_8_.pjB == 1 then
          pjB = "#00b50fTAK"
        else
          pjB = "#d10007NIE"
        end
        if _FORV_8_.pjC == 1 then
          pjC = "#00b50fTAK"
        else
          pjC = "#d10007NIE"
        end
        if _FORV_8_.pjL == 1 then
          pjL = "#00b50fTAK"
        else
          pjL = "#d10007NIE"
        end
        dxDrawRoundedRectangle(windowPos.x + 990 / zoom, windowPos.y + 80 / zoom, 300 / zoom, 200 / zoom, 15 / zoom, tocolor(50, 50, 50, 150), false)
        dxDrawRoundedRectangle(windowPos.x + 1000 / zoom, windowPos.y + 115 / zoom, 280 / zoom, 2 / zoom, 1 / zoom, tocolor(30, 30, 30, 150), false)
        dxDrawText("LICENCJE", windowPos.x + 1000 / zoom, windowPos.y - 2 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font22"), "left", "center", false, false, false, true, false)
        xY = 0
        for _FORV_14_, _FORV_15_ in ipairs({
          {"KAT.A", pjA},
          {"KAT.B", pjB},
          {"KAT.C", pjC},
          {"KAT.L", pjL}
        }) do
          xY = xY + 1
          dxDrawRoundedRectangle(windowPos.x + 996 / zoom, windowPos.y + 123 / zoom + 37 / zoom * (xY - 1), 290 / zoom, 35 / zoom, 15 / zoom, tocolor(30, 30, 30, 150), false)
          dxDrawText(_FORV_15_[1], windowPos.x + 1003 / zoom, windowPos.y + 79 / zoom + 74 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          dxDrawText(_FORV_15_[2], windowPos.x, windowPos.y + 79 / zoom + 74 / zoom * (xY - 1), windowPos.x + 362 / zoom + 915 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
        end
        dxDrawRoundedRectangle(windowPos.x + 529 / zoom, windowPos.y + 640 / zoom, windowPos.w - 828 / zoom, windowPos.h - 655 / zoom, 20 / zoom, tocolor(35, 35, 35, 240), false)
        clickTableC = {
          {"POJAZDY"},
          {"EKWIPUNEK"},
          {"KARY"}
        }
        xX = 0
        for _FORV_14_, _FORV_15_ in ipairs(clickTableC) do
          xX = xX + 1
          if isMouseIn(windowPos.x + 535 / zoom + 155 / zoom * (xX - 1), windowPos.y + 645 / zoom, 150 / zoom, 63 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 535 / zoom + 155 / zoom * (xX - 1), windowPos.y + 645 / zoom, 150 / zoom, 63 / zoom, 15 / zoom, tocolor(25, 25, 25, 150), false)
            dxDrawText(_FORV_15_[1], windowPos.x + 860 / zoom + 310 / zoom * (xX - 1), windowPos.y + 1152 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 225), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
          else
            dxDrawRoundedRectangle(windowPos.x + 535 / zoom + 155 / zoom * (xX - 1), windowPos.y + 645 / zoom, 150 / zoom, 63 / zoom, 15 / zoom, tocolor(29, 29, 29, 160), false)
            dxDrawText(_FORV_15_[1], windowPos.x + 860 / zoom + 310 / zoom * (xX - 1), windowPos.y + 1152 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
          end
        end
        if isMouseIn(windowPos.x + 535 / zoom, windowPos.y + 730 / zoom, windowPos.w - 840 / zoom, 63 / zoom) then
          dxDrawRoundedRectangle(windowPos.x + 535 / zoom, windowPos.y + 730 / zoom, windowPos.w - 840 / zoom, 63 / zoom, 20 / zoom, tocolor(35, 25, 25, 150), false)
          dxDrawText("NADAJ KAR\196\152", windowPos.x + 1170 / zoom, windowPos.y + 1322 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(210, 210, 210, 225), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
        else
          dxDrawRoundedRectangle(windowPos.x + 535 / zoom, windowPos.y + 730 / zoom, windowPos.w - 840 / zoom, 63 / zoom, 20 / zoom, tocolor(35, 29, 29, 160), false)
          dxDrawText("NADAJ KAR\196\152", windowPos.x + 1170 / zoom, windowPos.y + 1322 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "center", "center", false, false, false, true, false)
        end
        dxDrawText("AKTYWNE KARY:", windowPos.x, windowPos.y + 850 / zoom, windowPos.x + 362 / zoom + 930 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
        karyTable = {
          {
            "Mute",
            karyPlayer[2]
          },
          {
            "Prawko",
            karyPlayer[1]
          },
          {
            "Ban",
            karyPlayer[3]
          }
        }
        xY = 0
        for _FORV_14_, _FORV_15_ in ipairs(karyTable) do
          xY = xY + 1
          if _FORV_15_[2] then
            if _FORV_15_[1] == "Mute" then
              dxDrawText(_FORV_15_[1] .. ": #d10007Tak\n#ffffffPow\195\179d: #c7c7c7" .. karyPlayer[2][2] .. [[

#ffffffCzas: #c7c7c7]] .. karyPlayer[2][1] .. "", windowPos.x, windowPos.y + 980 / zoom + 180 / zoom * (xY - 1), windowPos.x + 362 / zoom + 930 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
              if isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 550 / zoom, 190 / zoom, 80 / zoom) and isCursorShowing() then
                cxs, cys = getCursorPosition()
                cxs, cys = screenW * cxs, screenH * cys
                dxDrawText("ODMUTUJ", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
                dxDrawText("ODMUTUJ", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              end
            end
            if _FORV_15_[1] == "Prawko" then
              dxDrawText(_FORV_15_[1] .. ": #d10007Tak\n#ffffffPow\195\179d: #c7c7c7" .. karyPlayer[1][2] .. [[

#ffffffCzas: #c7c7c7]] .. karyPlayer[1][1] .. "", windowPos.x, windowPos.y + 980 / zoom + 180 / zoom * (xY - 1), windowPos.x + 362 / zoom + 930 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
              if isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 640 / zoom, 190 / zoom, 80 / zoom) and isCursorShowing() then
                cxs, cys = getCursorPosition()
                cxs, cys = screenW * cxs, screenH * cys
                dxDrawText("ODDAJ PRAWKO", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
                dxDrawText("ODDAJ PRAWKO", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              end
            end
            if _FORV_15_[1] == "Ban" then
              dxDrawText(_FORV_15_[1] .. ": #d10007Tak\n#ffffffPow\195\179d: #c7c7c7" .. karyPlayer[3][2] .. [[

#ffffffCzas: #c7c7c7]] .. karyPlayer[3][1] .. "", windowPos.x, windowPos.y + 980 / zoom + 180 / zoom * (xY - 1), windowPos.x + 362 / zoom + 930 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
              if isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 730 / zoom, 190 / zoom, 80 / zoom) and isCursorShowing() then
                cxs, cys = getCursorPosition()
                cxs, cys = screenW * cxs, screenH * cys
                dxDrawText("ODBANUJ", cxs + 15 / zoom, cys + 35 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
                dxDrawText("ODBANUJ", cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
              end
            end
          else
            dxDrawText(_FORV_15_[1] .. ": #00b50fBrak", windowPos.x, windowPos.y + 980 / zoom + 180 / zoom * (xY - 1), windowPos.x + 362 / zoom + 930 / zoom, windowPos.y + 204 / zoom, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font15"), "right", "center", false, false, false, true, false)
          end
        end
      end
    elseif windows.selectCategory == "POJAZDY GRACZA" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      for _FORV_7_, _FORV_8_ in ipairs(info_users) do
        dxDrawText("POJAZDY GRACZA #fcba03" .. _FORV_8_.login .. " #e6e6e6- " .. #vehicle_table .. "", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(vehicle_table) do
        if _FORV_7_ >= k1 and _FORV_7_ <= n1 then
          xY = xY + 1
          if isMouseIn(windowPos.x + 240 / zoom, windowPos.y + 75 / zoom + 49 / zoom * (xY - 1), 1000 / zoom, 45 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 240 / zoom, windowPos.y + 75 / zoom + 49 / zoom * (xY - 1), 1052 / zoom, 45 / zoom, 10 / zoom, tocolor(40, 40, 40, 230))
          else
            dxDrawRoundedRectangle(windowPos.x + 240 / zoom, windowPos.y + 75 / zoom + 49 / zoom * (xY - 1), 1052 / zoom, 45 / zoom, 10 / zoom, tocolor(45, 45, 45, 230))
          end
          dxDrawText(_FORV_8_.id, windowPos.x + 250 / zoom, windowPos.y - 4 / zoom + 98 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
          dxDrawText(exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_8_.model), _FORV_8_.custom_model), windowPos.x + 320 / zoom, windowPos.y - 4 / zoom + 98 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, false, false)
          dxDrawText("#fcba03" .. _FORV_8_.pojemnosc .. " " .. _FORV_8_.cylindry .. "", windowPos.x + 600 / zoom, windowPos.y - 4 / zoom + 98 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          exports.ST_buttons:dxCreateButton("USU\197\131", windowPos.x + 1185 / zoom, windowPos.y + 80 / zoom + 49 / zoom * (xY - 1), 100 / zoom, 35 / zoom, 255, 1)
        end
      end
      if isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) then
        dxDrawImage(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
      else
        dxDrawImage(windowPos.x + windowPos.w - 60 / zoom, windowPos.y + 18 / zoom, 40 / zoom, 40 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      end
    elseif windows.selectCategory == "INFORMACJE O POJE\197\185DZIE" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawRoundedRectangle(windowPos.x + 240 / zoom, windowPos.y + 76 / zoom, 567 / zoom, 363 / zoom, 17 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(windowPos.x + 241 / zoom, windowPos.y + 77 / zoom, 565 / zoom, 360 / zoom, 17 / zoom, tocolor(25, 25, 25, 255))
      dxDrawText("INFORMACJE", windowPos.x + 250 / zoom, windowPos.y - 12 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 110 / zoom, 545 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
      dxDrawRoundedRectangle(windowPos.x + 815 / zoom, windowPos.y + 76 / zoom, 475 / zoom, 363 / zoom, 17 / zoom, tocolor(60, 60, 60, 255))
      dxDrawRoundedRectangle(windowPos.x + 816 / zoom, windowPos.y + 77 / zoom, 473 / zoom, 360 / zoom, 17 / zoom, tocolor(25, 25, 25, 255))
      for _FORV_7_, _FORV_8_ in ipairs(vehicle_table) do
        dxDrawText("POJAZD ID #fcba03" .. _FORV_8_.id .. "", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
        if _FORV_8_.engineType == "Elektryczny" then
          nameFuel = {"Bateria", "KwH"}
        else
          nameFuel = {"Paliwo", "L"}
        end
        if _FORV_8_.plateText == "" then
        else
        end
        nitroText = "#8c0000NIE"
        for _FORV_15_, _FORV_16_ in ipairs(split(_FORV_8_.tuning, ",")) do
          if _FORV_16_ == "1010" then
            nitroText = "#039118TAK  #e6e6e6( #ffbb00" .. _FORV_8_.nitro .. "#e6e6e6/#ffbb00" .. _FORV_8_.butlaN .. "#e6e6e6L )"
          end
        end
        brakeText = "#ffbb00" .. _FORV_8_.hamulce
        if _FORV_8_.hamulce == "Brak" then
          brakeText = "#c8c8c8Brak"
        end
        for _FORV_15_, _FORV_16_ in pairs(wheelsName) do
          if _FORV_16_[1] == _FORV_8_.wheelsRear then
            wheelsR = wheelsName[_FORV_15_][2]
          end
          if _FORV_16_[1] == _FORV_8_.wheelsFront then
            wheelsF = wheelsName[_FORV_15_][2]
          end
        end
        xY = 0
        for _FORV_17_, _FORV_18_ in ipairs({
          {
            "ID",
            "#ffbb00" .. _FORV_8_.id .. ""
          },
          {
            "PRZEBIEG",
            "#ffbb00" .. _FORV_8_.mileage .. " KM"
          },
          {
            "OSTATNI KIEROWCA",
            "#ffbb00" .. (string.gsub(_FORV_8_.driver, "#%x%x%x%x%x%x", "") or "Brak") .. ""
          },
          {
            nameFuel[1],
            "#ffbb00" .. _FORV_8_.fuel .. " #e6e6e6/ #ffbb00" .. _FORV_8_.bak .. " #e6e6e6" .. nameFuel[2]
          },
          {
            "UID W\197\129A\197\154CICIELA",
            "#ffbb00" .. _FORV_8_.ownedPlayer .. ""
          },
          {
            "STAN SILNIKA",
            "#ffbb00" .. string.format("%.1f", "" .. _FORV_8_.health / 10) .. "#e6e6e6%"
          },
          {
            "SILNIK",
            "" .. _FORV_8_.pojemnosc .. " " .. _FORV_8_.cylindry .. " " .. _FORV_8_.engineType .. ""
          },
          {
            "REJESTRACJA",
            "" .. ("#ffbb00" .. _FORV_8_.plateText .. "") .. ""
          }
        }) do
          xY = xY + 1
          dxDrawText(_FORV_18_[1], windowPos.x + 250 / zoom, windowPos.y + 67 / zoom + 78 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_18_[2], windowPos.x, windowPos.y + 67 / zoom + 78 / zoom * (xY - 1), windowPos.x + 362 / zoom + 430 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
        end
        dxDrawRoundedRectangle(windowPos.x + 240 / zoom, windowPos.y + 446 / zoom, 1047 / zoom, 363 / zoom, 17 / zoom, tocolor(60, 60, 60, 255))
        dxDrawRoundedRectangle(windowPos.x + 241 / zoom, windowPos.y + 447 / zoom, 1045 / zoom, 360 / zoom, 17 / zoom, tocolor(25, 25, 25, 255))
        dxDrawText("TUNING POJAZDU", windowPos.x + 250 / zoom, windowPos.y + 728 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, true, false)
        dxDrawRoundedRectangle(windowPos.x + 250 / zoom, windowPos.y + 483 / zoom, 1030 / zoom, 3 / zoom, 2 / zoom, tocolor(255, 187, 0, 230))
        xY = 0
        for _FORV_17_, _FORV_18_ in ipairs({
          {
            "US1",
            _FORV_8_.us1,
            true
          },
          {
            "US2",
            _FORV_8_.us2,
            true
          },
          {
            "US3",
            _FORV_8_.us3,
            true
          },
          {
            "US4",
            _FORV_8_.us4,
            true
          },
          {
            "CHIP",
            _FORV_8_.chip,
            true
          },
          {
            "TURBO",
            _FORV_8_.turbo,
            true
          }
        }) do
          xY = xY + 1
          if _FORV_18_[3] then
            if _FORV_18_[2] == 1 then
              v2Name = "#039118tak"
            elseif _FORV_18_[2] == 0 then
              v2Name = "#8c0000nie"
            end
          else
            v2Name = _FORV_18_[2]
          end
          dxDrawRectangle(windowPos.x + 250 / zoom, windowPos.y + 525 / zoom + 54 / zoom * (xY - 1), 210 / zoom, 2 / zoom, tocolor(60, 60, 60, 100))
          dxDrawText(_FORV_18_[1], windowPos.x + 250 / zoom, windowPos.y + 815 / zoom + 108 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
          dxDrawText(v2Name, windowPos.x, windowPos.y + 815 / zoom + 108 / zoom * (xY - 1), windowPos.x + 362 / zoom + 98 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
        end
        xY = 0
        xX = 1
        for _FORV_17_, _FORV_18_ in ipairs({
          {
            "ZMIENNY NAP\196\152D",
            _FORV_8_.naped,
            true
          },
          {
            "SZYBY",
            _FORV_8_.windows,
            true
          },
          {
            "LPG",
            _FORV_8_.instalacja_lpg,
            true
          },
          {
            "TAXOMETR",
            _FORV_8_.taxometr,
            true
          },
          {
            "ZMIENNE ZAWIESZENIE",
            _FORV_8_.rh,
            true
          },
          {"HAMULCE", brakeText},
          {
            "TRAKCJA",
            _FORV_8_.trakcja,
            true
          },
          {"NITRO", nitroText},
          {
            "TYLNE OPONY",
            wheelsR
          },
          {
            "PRZEDNIE OPONY",
            wheelsF
          }
        }) do
          xY = xY + 1
          if xY > 6 then
            xY = 1
            xX = xX + 1
          end
          dxDrawRectangle(windowPos.x + 540 / zoom + 390 / zoom * (xX - 1), windowPos.y + 525 / zoom + 55 / zoom * (xY - 1), 340 / zoom, 2 / zoom, tocolor(60, 60, 60, 100))
          if _FORV_18_[3] then
            if _FORV_18_[1] == "LPG" then
              if _FORV_18_[2] == "tak" then
                v2Name = "#039118tak"
              else
                v2Name = "#8c0000nie"
              end
            elseif _FORV_18_[2] == 1 then
              v2Name = "#039118tak"
            elseif _FORV_18_[2] == 0 then
              v2Name = "#8c0000nie"
            end
          else
            v2Name = _FORV_18_[2]
          end
          dxDrawText(_FORV_18_[1], windowPos.x + 540 / zoom + 390 / zoom * (xX - 1), windowPos.y + 815 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "left", "center", false, false, false, false, false)
          dxDrawText(v2Name, windowPos.x, windowPos.y + 815 / zoom + 110 / zoom * (xY - 1), windowPos.x + 362 / zoom + 520 / zoom + 390 / zoom * (xX - 1), windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font19"), "right", "center", false, false, false, true, false)
        end
        if _FORV_8_.ownedPlayer ~= 1183 then
          exports.ST_buttons:dxCreateButton("USU\197\131 POJAZD", windowPos.x + 970 / zoom, windowPos.y + 720 / zoom, 250 / zoom, 70 / zoom, 255, 1)
        end
        if last_table then
          if isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) then
            dxDrawImage(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
          else
            dxDrawImage(windowPos.x + windowPos.w - 60 / zoom, windowPos.y + 18 / zoom, 40 / zoom, 40 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
          end
        end
      end
    elseif windows.selectCategory == "KARY GRACZA" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      for _FORV_7_, _FORV_8_ in ipairs(info_users) do
        dxDrawText("KARY GRACZA #fcba03" .. _FORV_8_.login .. " #e6e6e6- " .. #penalty_table .. "", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      end
      xY = 0
      for _FORV_7_, _FORV_8_ in ipairs(penalty_table) do
        if _FORV_7_ >= k1 and _FORV_7_ <= n1 then
          xY = xY + 1
          if _FORV_8_.typ == "Ostrze\197\188enie" then
          elseif "#fcba03! Ostrze\197\188enie" == "Ban" then
          elseif "#b00000\226\155\148 Ban" == "Prawo jazdy" then
          elseif "#0007c4Prawo jazdy" == "Mute" then
          elseif "#9c4141Mute" == "Kick" then
          elseif "#ba0235\226\157\140Kick" == "Perm Ban" then
          else
          end
          dxDrawText(_FORV_8_.date, windowPos.x + 245 / zoom, windowPos.y - 15 / zoom + 70 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_8_.typ, windowPos.x + 420 / zoom, windowPos.y - 15 / zoom + 70 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, true, false)
          dxDrawText(_FORV_8_.nadajacy, windowPos.x + 540 / zoom, windowPos.y - 15 / zoom + 70 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
          dxDrawText(_FORV_8_.powod, windowPos.x + 680 / zoom, windowPos.y - 15 / zoom + 70 / zoom * (xY - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal14"), "left", "center", false, false, false, false, false)
        end
      end
      if isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) then
        dxDrawImage(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
      else
        dxDrawImage(windowPos.x + windowPos.w - 60 / zoom, windowPos.y + 18 / zoom, 40 / zoom, 40 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      end
    elseif windows.selectCategory == "EKWIPUNEK GRACZA" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      for _FORV_7_, _FORV_8_ in ipairs(info_users) do
        dxDrawText("EKWIPUNEK GRACZA #fcba03" .. _FORV_8_.login .. "", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      end
      for _FORV_9_ = 1, 70 do
        if 0 + 1 > 10 then
        end
        dxDrawRoundedRectangle(windowPos.x + 105 / zoom * (1 - 1) + 243 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 77 / zoom, 100 / zoom, 100 / zoom, 20 / zoom, tocolor(45, 45, 45, 90))
      end
      for _FORV_11_, _FORV_12_ in ipairs(invetory_table) do
        if 0 + 1 > 10 then
        end
        dxDrawRoundedRectangle(windowPos.x + 105 / zoom * (1 - 1) + 243 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 77 / zoom, 100 / zoom, 100 / zoom, 20 / zoom, tocolor(252, 186, 3, 230))
        dxDrawRoundedRectangle(windowPos.x + 105 / zoom * (1 - 1) + 243 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 77 / zoom, 101 / zoom, 101 / zoom, 20 / zoom, tocolor(252, 186, 3, 230))
        if windows.select == false then
          if isMouseIn(windowPos.x + 105 / zoom * (1 - 1) + 244 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 78 / zoom, 99 / zoom, 99 / zoom) then
            dxDrawRoundedRectangle(windowPos.x + 105 / zoom * (1 - 1) + 244 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 78 / zoom, 99 / zoom, 99 / zoom, 20 / zoom, tocolor(35, 35, 35, 255))
          else
            dxDrawRoundedRectangle(windowPos.x + 105 / zoom * (1 - 1) + 244 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 78 / zoom, 99 / zoom, 99 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
          end
        else
          dxDrawRoundedRectangle(windowPos.x + 105 / zoom * (1 - 1) + 244 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 78 / zoom, 99 / zoom, 99 / zoom, 20 / zoom, tocolor(45, 45, 45, 255))
        end
        name = _FORV_12_.name
        if string.sub(name, 1, 4) == "Skin" then
          name = "Skin"
        end
        for _FORV_20_, _FORV_21_ in pairs(settings_item) do
          if settings_item[_FORV_20_][1] == name then
            dxDrawImage(windowPos.x + 105 / zoom * (1 - 1) + 243 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 77 / zoom, 100 / zoom, 100 / zoom, settings_item[_FORV_20_][2], 0, 0, 0, tocolor(255, 255, 255, 255), false)
          end
        end
        dxDrawText(_FORV_12_.ilosc, windowPos.x + 251 / zoom + 105 / zoom * (1 - 1), windowPos.y + 126 / zoom + 210 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        dxDrawText(_FORV_12_.ilosc, windowPos.x + 250 / zoom + 105 / zoom * (1 - 1), windowPos.y + 125 / zoom + 210 / zoom * (1 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 119, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "left", "center", false, false, false, false, false)
        if isMouseIn(windowPos.x + 105 / zoom * (1 - 1) + 244 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 78 / zoom, 99 / zoom, 99 / zoom) and isCursorShowing() then
          cxs, cys = getCursorPosition()
          cxs, cys = screenW * cxs, screenH * cys
          dxDrawText(name, cxs + 14 / zoom, cys + 34 / zoom, cxs, cys, tocolor(0, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
          dxDrawText(name, cxs + 13 / zoom, cys + 33 / zoom, cxs, cys, tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, true, false, false)
        end
      end
      if selfInvetory.name and selfInvetory.name then
        dxDrawRoundedRectangle(selfInvetory.posWindow[1] + 66 / zoom, selfInvetory.posWindow[2] + 38 / zoom, 189 / zoom, 44 / zoom, 15 / zoom, tocolor(255, 179, 0), true)
        dxDrawRoundedRectangle(selfInvetory.posWindow[1] + 67 / zoom, selfInvetory.posWindow[2] + 39 / zoom, 186 / zoom, 42 / zoom, 15 / zoom, tocolor(35, 35, 35, 255), true)
        dxDrawText(selfInvetory.name, selfInvetory.posWindow[4] + 40 / zoom, selfInvetory.posWindow[3] - 71 / zoom, selfInvetory.posWindow[5], selfInvetory.posWindow[6], tocolor(255, 255, 255, 255), 1 / zoom, exports.ST_gui:getGUIFont("font13"), "center", "center", false, false, true, false, false)
        exports.ST_buttons:dxCreateButton("USU\197\131 1 SZT", selfInvetory.posWindow[1] + 85 / zoom, selfInvetory.posWindow[2] + 83 / zoom, 150 / zoom, 42 / zoom, 255, 1)
        exports.ST_buttons:dxCreateButton("USU\197\131 WSZYSTKO", selfInvetory.posWindow[1] + 85 / zoom, selfInvetory.posWindow[2] + 127 / zoom, 150 / zoom, 42 / zoom, 255, 1)
        exports.ST_buttons:dxCreateButton("ANULUJ", selfInvetory.posWindow[1] + 85 / zoom, selfInvetory.posWindow[2] + 171 / zoom, 150 / zoom, 42 / zoom, 255, 1)
      end
      if isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) then
        dxDrawImage(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
      else
        dxDrawImage(windowPos.x + windowPos.w - 60 / zoom, windowPos.y + 18 / zoom, 40 / zoom, 40 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      end
    elseif windows.selectCategory == "NADAWANIE KARY" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      for _FORV_7_, _FORV_8_ in ipairs(info_users) do
        dxDrawText("NADAWANIE KARY GRACZOWI #fcba03" .. _FORV_8_.login .. "", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      end
      dxDrawRoundedRectangle(windowPos.x + 399 / zoom, windowPos.y + 179 / zoom, windowPos.w - 568 / zoom, windowPos.h - 358 / zoom, 20 / zoom, tocolor(60, 60, 60, 240), false)
      dxDrawRoundedRectangle(windowPos.x + 400 / zoom, windowPos.y + 180 / zoom, windowPos.w - 570 / zoom, windowPos.h - 360 / zoom, 20 / zoom, tocolor(20, 20, 20, 240), false)
      dxDrawText("WYBIERZ TYP KARY", windowPos.x + 1150 / zoom, windowPos.y + 230 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      if selfKara.type == "MUTE" then
        dxDrawRoundedRectangle(windowPos.x + 438 / zoom, windowPos.y + 243 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
      elseif selfKara.type == "PRAWKO" then
        dxDrawRoundedRectangle(windowPos.x + 603 / zoom, windowPos.y + 243 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
      elseif selfKara.type == "BAN" then
        dxDrawRoundedRectangle(windowPos.x + 768 / zoom, windowPos.y + 243 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
      elseif selfKara.type == "PERM" then
        dxDrawRoundedRectangle(windowPos.x + 933 / zoom, windowPos.y + 243 / zoom, 154 / zoom, 54 / zoom, 15 / zoom, tocolor(0, 255, 0, 230))
      end
      exports.ST_buttons:dxCreateButton("MUTE", windowPos.x + 440 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("PRAWKO", windowPos.x + 605 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("BAN", windowPos.x + 770 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom, 255, 1)
      exports.ST_buttons:dxCreateButton("PERM", windowPos.x + 935 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom, 255, 1)
      dxDrawText("WYBIERZ JEDNOSTK\196\152 CZASU", windowPos.x + 1150 / zoom, windowPos.y + 480 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 690 / zoom, windowPos.y + 370 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 180, 0, 0, tocolor(255, 255, 255, 230), false)
      dxDrawText(selfKara.typeTime[1], windowPos.x + 1150 / zoom, windowPos.y + 560 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 187, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
      dxDrawImage(windowPos.x + 800 / zoom, windowPos.y + 370 / zoom, 25 / zoom, 25 / zoom, textures.strzalka, 0, 0, 0, tocolor(255, 255, 255, 230), false)
      if isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) then
        dxDrawImage(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 230), false)
      else
        dxDrawImage(windowPos.x + windowPos.w - 60 / zoom, windowPos.y + 18 / zoom, 40 / zoom, 40 / zoom, textures.back, 0, 0, 0, tocolor(255, 187, 0, 255), false)
      end
      exports.ST_buttons:dxCreateButton("WYKONAJ", windowPos.x + 665 / zoom, windowPos.y + 550 / zoom, 200 / zoom, 60 / zoom, 255, 1)
    elseif windows.selectCategory == "PREZENTY" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.search_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("WIELKANOC", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 589 / zoom, windowPos.y + 299 / zoom, windowPos.w - 968 / zoom, windowPos.h - 598 / zoom, 20 / zoom, tocolor(60, 60, 60, 240), false)
      dxDrawRoundedRectangle(windowPos.x + 590 / zoom, windowPos.y + 300 / zoom, windowPos.w - 970 / zoom, windowPos.h - 600 / zoom, 20 / zoom, tocolor(20, 20, 20, 240), false)
      dxDrawText("TW\195\147J PREZENT", windowPos.x + 1150 / zoom, windowPos.y + 475 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      dxDrawRoundedRectangle(windowPos.x + 940 / zoom, windowPos.y + 250 / zoom, 95 / zoom, 30 / zoom, 5 / zoom, tocolor(119, 0, 0, 70), false)
      dxDrawText("WSZYSTKIEGO NAJLEPSZEGO Z OKAZJI \197\154WI\196\132T! - #770000@Stary", windowPos.x + 1150 / zoom, windowPos.y + 330 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 0, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      for _FORV_7_, _FORV_8_ in ipairs(prezenty_table) do
        if _FORV_8_.uid == getElementData(localPlayer, "player:sid") then
          for _FORV_12_, _FORV_13_ in ipairs(prezenty) do
            if _FORV_12_ == _FORV_8_.id then
              dxDrawText(_FORV_13_, windowPos.x + 1150 / zoom, windowPos.y + 585 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(255, 150, 150, 255), 1 / zoom, exports.ST_gui:getGUIFont("font17"), "center", "center", false, false, false, true, false)
            end
          end
        else
        end
      end
      exports.ST_buttons:dxCreateButton("LOSUJ PREZENT", windowPos.x + 655 / zoom, windowPos.y + 440 / zoom, 200 / zoom, 60 / zoom, 255, 1)
      dxDrawText("#fcba03PREZENTY:", windowPos.x + 230 / zoom, windowPos.y - 15 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font20"), "center", "center", false, false, false, true, false)
      for _FORV_9_, _FORV_10_ in ipairs(prezenty) do
        for _FORV_15_, _FORV_16_ in ipairs(prezenty_table) do
          if _FORV_9_ == _FORV_16_.id then
          end
        end
        dxDrawText("" .. _FORV_10_ .. "" .. " - #fcba03" .. _FORV_16_.nick .. " #00bf26\226\156\148\239\184\143", windowPos.x + 250 / zoom, windowPos.y + 30 / zoom + 36 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal10"), "left", "center", false, false, false, true, false)
      end
      dxDrawText("DOZWOLONE JEST WYMIENIANIE SI\196\152 PREZENTAMI", windowPos.x + 1150 / zoom, windowPos.y + 920 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "center", "center", false, false, false, true, false)
    elseif windows.selectCategory == "WYSZUKAJ ORG" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.organization_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("WYSZUKAJ ORGANIZACJ\196\152", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 399 / zoom, windowPos.y + 199 / zoom, windowPos.w - 568 / zoom, windowPos.h - 398 / zoom, 20 / zoom, tocolor(60, 60, 60, 240), false)
      dxDrawRoundedRectangle(windowPos.x + 400 / zoom, windowPos.y + 200 / zoom, windowPos.w - 570 / zoom, windowPos.h - 400 / zoom, 20 / zoom, tocolor(20, 20, 20, 240), false)
      dxDrawText("WPISZ #fcba03ID #e6e6e6LUB #fcba03NAZW\196\152 #e6e6e6OSOBY, KT\195\147R\196\132 CHCESZ WYSZUKA\196\134", windowPos.x + 1150 / zoom, windowPos.y + 280 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font23"), "center", "center", false, false, false, true, false)
      exports.ST_buttons:dxCreateButton("WYSZUKAJ", windowPos.x + 655 / zoom, windowPos.y + 480 / zoom, 200 / zoom, 60 / zoom, 255, 1)
    elseif windows.selectCategory == "SKRYPTY" then
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, windowPos.w - 227 / zoom, 70 / zoom, 20 / zoom, tocolor(35, 35, 35, 250), false)
      dxDrawRoundedRectangle(windowPos.x + 227 / zoom, windowPos.y, 7 / zoom, windowPos.h, 1 / zoom, tocolor(55, 55, 55, 250), false)
      dxDrawImage(windowPos.x + 240 / zoom, windowPos.y + 5 / zoom, 60 / zoom, 60 / zoom, textures.script_icon, 0, 0, 0, tocolor(255, 255, 255, 255), false)
      dxDrawText("SKRYPTY", windowPos.x + 315 / zoom, windowPos.y - 127 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
      dxDrawRoundedRectangle(windowPos.x + 242 / zoom, windowPos.y + 77 / zoom, 520 / zoom, 730 / zoom, 20 / zoom, tocolor(35, 35, 35, 200), false)
      dxDrawRoundedRectangle(windowPos.x + 770 / zoom, windowPos.y + 77 / zoom, 520 / zoom, 730 / zoom, 20 / zoom, tocolor(35, 35, 35, 200), false)
      skrypty = script_table_base
      editText = string.lower(exports.ST_gui:getCustomEditboxText("searchScript"))
      if exports.ST_gui:getCustomEditboxText("searchScript"):len() > 0 then
        skrypty = getPlayersFromText(editText)
      end
      dxDrawRoundedRectangle(windowPos.x + 1059 / zoom, windowPos.y + 17 / zoom, 212 / zoom, 42 / zoom, 15 / zoom, tocolor(25, 25, 25, 240), false)
      for _FORV_8_, _FORV_9_ in ipairs(skrypty) do
        if _FORV_8_ >= k1 and _FORV_8_ <= n1 then
          if selectScript == _FORV_9_ then
            dxDrawRoundedRectangle(windowPos.x + 245.5 / zoom, windowPos.y + 83.5 / zoom + 45 / zoom * (0 + 1 - 1), 498 / zoom, 43 / zoom, 15 / zoom, tocolor(55, 55, 55, 255), false)
          end
          dxDrawRoundedRectangle(windowPos.x + 247 / zoom, windowPos.y + 85 / zoom + 45 / zoom * (0 + 1 - 1), 495 / zoom, 40 / zoom, 15 / zoom, tocolor(25, 25, 25, 240), false)
          if _UPVALUE2_[_FORV_9_[1]] then
            dxDrawText("#7d0000block", windowPos.x + 258 / zoom, windowPos.y + 12 / zoom + 90 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          else
            dxDrawText(_FORV_9_[1], windowPos.x + 258 / zoom, windowPos.y + 12 / zoom + 90 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "left", "center", false, false, false, true, false)
          end
          if _FORV_9_[2] == "running" then
            dxDrawText("#00d438W\197\129\196\132CZONY", windowPos.x, windowPos.y + 12 / zoom + 90 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 367 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          else
            dxDrawText(_FORV_9_[2], windowPos.x, windowPos.y + 12 / zoom + 90 / zoom * (0 + 1 - 1), windowPos.x + 362 / zoom + 367 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font16"), "right", "center", false, false, false, true, false)
          end
        end
      end
      dxDrawScrollBar(#script_table, windowPos.x + 749 / zoom, windowPos.y + 93 / zoom, 6 / zoom, 703 / zoom, m1, k1)
      if selectScript then
        dxDrawText(selectScript[1], windowPos.x + 785 / zoom, windowPos.y + 15 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font24"), "left", "center", false, false, false, false, false)
        if selectScript[2] == "running" then
          dxDrawText("#00d438W\197\129\196\132CZONY", windowPos.x + 785 / zoom, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
        else
          dxDrawText(selectScript[2], windowPos.x + 785 / zoom, windowPos.y + 80 / zoom, windowPos.x + 362 / zoom, windowPos.y + 204 / zoom, tocolor(230, 230, 230, 255), 1 / zoom, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, false, false)
        end
        exports.ST_buttons:dxCreateButton("W\197\129\196\132CZ", windowPos.x + 785 / zoom, windowPos.y + 180 / zoom, 180 / zoom, 55 / zoom, 255, 1)
        exports.ST_buttons:dxCreateButton("RESTART", windowPos.x + 785 / zoom, windowPos.y + 250 / zoom, 180 / zoom, 55 / zoom, 255, 1)
        exports.ST_buttons:dxCreateButton("WY\197\129\196\132CZ", windowPos.x + 785 / zoom, windowPos.y + 320 / zoom, 180 / zoom, 55 / zoom, 255, 1)
      end
    end
  end
end
function click(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "left" and _ARG_1_ == "down" then
    if windows.selectCategory == "EKWIPUNEK GRACZA" then
      if selfInvetory.select == nil then
        for _FORV_7_, _FORV_8_ in ipairs(invetory_table) do
          name = _FORV_8_.name
          if string.sub(name, 1, 4) == "Skin" then
            name = "Skin"
          end
          if 0 + 1 > 10 then
          end
          if isMouseIn(windowPos.x + 105 / zoom * (1 - 1) + 243 / zoom, windowPos.y + 105 / zoom * (1 + 1 - 1) + 77 / zoom, 101 / zoom, 101 / zoom) then
            selfInvetory.select = true
            selfInvetory.posWindow = {
              windowPos.x + 105 / zoom * (1 - 1) + 243 / zoom,
              windowPos.y + 105 / zoom * (1 + 1 - 1) + 77 / zoom,
              windowPos.y + 142 / zoom + 210 / zoom * (1 + 1 - 1),
              windowPos.x + 402 / zoom + 210 / zoom * (1 - 1),
              windowPos.x + 362 / zoom,
              windowPos.y + 204 / zoom
            }
            selfInvetory.name = name
            selfInvetory.idItem = _FORV_8_.id
            selfInvetory.ItemNumber = _FORV_8_.ilosc
          end
        end
      elseif isMouseIn(selfInvetory.posWindow[1] + 85 / zoom, selfInvetory.posWindow[2] + 83 / zoom, 150 / zoom, 42 / zoom) then
        for _FORV_5_, _FORV_6_ in ipairs(info_users) do
          triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "deleteInvetory", localPlayer, _FORV_6_.id, selfInvetory.idItem, true, selfInvetory.name)
        end
        selfInvetory = {}
      elseif isMouseIn(selfInvetory.posWindow[1] + 85 / zoom, selfInvetory.posWindow[2] + 127 / zoom, 150 / zoom, 42 / zoom) then
        for _FORV_5_, _FORV_6_ in ipairs(info_users) do
          triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "deleteInvetory", localPlayer, _FORV_6_.id, selfInvetory.idItem, false, selfInvetory.name, selfInvetory.ItemNumber)
        end
        selfInvetory = {}
      elseif isMouseIn(selfInvetory.posWindow[1] + 85 / zoom, selfInvetory.posWindow[2] + 171 / zoom, 150 / zoom, 42 / zoom) then
        selfInvetory = {}
      end
    end
    if windows.background == true then
      for _FORV_6_, _FORV_7_ in ipairs(category) do
        if isMouseIn(windowPos.x, windowPos.y + 60 / zoom * (0 + 1 - 1), 227 / zoom, 60 / zoom) and windows.background == true and getElementData(localPlayer, "player:level") then
          exports.ST_gui:destroyCustomEditbox("addAdmins")
          exports.ST_gui:destroyCustomEditbox("search")
          exports.ST_gui:destroyCustomEditbox("customDateHistory")
          exports.ST_gui:destroyCustomEditbox("searchScript")
          if isElement(myObject) then
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end
          if isElement(vehicle3D) then
            destroyElement(vehicle3D)
          end
          last_table = false
          if _FORV_7_.text == "ADMINISTRACJA" then
            windows.selectCategory = "ADMINISTRACJA"
            exports.ST_gui:createCustomEditbox("addAdmins", "Wpisz UID aby doda\196\135", windowPos.x + 985 / zoom, windowPos.y + 759 / zoom, 250 / zoom, 46 / zoom, false, false, "", 1, {
              25,
              25,
              25,
              0,
              22,
              22,
              22,
              0
            })
          elseif _FORV_7_.text == "WYSZUKAJ GRACZA" then
            windows.selectCategory = "WYSZUKAJ GRACZA"
            exports.ST_gui:createCustomEditbox("search", "UID / NICK", windowPos.x + 500 / zoom, windowPos.y + 370 / zoom, windowPos.w - 770 / zoom, 50 / zoom, false, "", "", 1)
          elseif _FORV_7_.text == "WYSZUKAJ POJAZD" then
            windows.selectCategory = "WYSZUKAJ POJAZD"
            exports.ST_gui:createCustomEditbox("search", "ID", windowPos.x + 500 / zoom, windowPos.y + 370 / zoom, windowPos.w - 770 / zoom, 50 / zoom, false, "", "", 1)
          elseif _FORV_7_.text == "WYSZUKAJ ORG" then
            windows.selectCategory = "WYSZUKAJ ORG"
            exports.ST_gui:createCustomEditbox("search", "ID / NAZWA", windowPos.x + 500 / zoom, windowPos.y + 370 / zoom, windowPos.w - 770 / zoom, 50 / zoom, false, "", "", 1)
          elseif _FORV_7_.text == "PREZENTY" then
            if getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 2 then
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "pokazPrezenty", localPlayer)
              windows.selectCategory = _FORV_7_.text
            end
          elseif _FORV_7_.text == "SKRYPTY" and (getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 2) then
            k1 = 1
            n1 = 16
            m1 = 16
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "pokazSkrypty", localPlayer)
            windows.selectCategory = _FORV_7_.text
            exports.ST_gui:destroyCustomEditbox("searchScript")
            exports.ST_gui:createCustomEditbox("searchScript", "Wyszukaj skrypt", windowPos.x + 1060 / zoom, windowPos.y + 18 / zoom, 210 / zoom, 40 / zoom, false, false, "", 1)
          end
        end
      end
    end
    if windows.background == true and windows.selectCategory == "ADMINISTRACJA" then
      for _FORV_6_, _FORV_7_ in ipairs(admins_table) do
        if _FORV_6_ >= _UPVALUE0_ and _FORV_6_ <= _UPVALUE1_ and isMouseIn(windowPos.x + 240 / zoom, windowPos.y + 76 / zoom + 75 / zoom * (0 + 1 - 1), 1052 / zoom, 70 / zoom) and windows.background == true then
          for _FORV_12_, _FORV_13_ in ipairs(lastOnline_table) do
            if _FORV_13_[1] == _FORV_7_.uid and getTickCount() - lastTickCount > 1000 then
              historyAdm_table = {}
              k1 = 1
              n1 = 4
              m1 = 4
              windows.selectCategory = "ADMINISTRATOR"
              selectUser = _FORV_7_.uid
              exports.ST_gui:destroyCustomEditbox("addAdmins")
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "showHistoryAdm", localPlayer, _FORV_7_.uid)
              lastTickCount = getTickCount()
            end
          end
        end
      end
    end
    if windows.background == true and windows.selectCategory == "ADMINISTRATOR" and (getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25) then
      for _FORV_6_, _FORV_7_ in ipairs(historyAdm_table) do
        if isMouseIn(windowPos.x + 1250 / zoom, windowPos.y + 514 / zoom + 55 / zoom * (0 + 1 - 1), 20 / zoom, 20 / zoom) then
          print(_FORV_7_.uid)
          triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "deleteHistory", localPlayer, _FORV_7_.uid, _FORV_7_.type, _FORV_7_.rank, _FORV_7_.date)
        end
      end
    end
    if windows.background == true and windows.selectCategory == "SKRYPTY" then
      for _FORV_6_, _FORV_7_ in ipairs(script_table) do
        if not (_FORV_6_ >= k1 and _FORV_6_ <= n1 and isMouseIn(windowPos.x + 247 / zoom, windowPos.y + 85 / zoom + 45 / zoom * (0 + 1 - 1), 495 / zoom, 40 / zoom)) or _UPVALUE2_[_FORV_7_[1]] then
        else
          selectScript = _FORV_7_
        end
      end
    end
    if isMouseIn(windowPos.x + 1165 / zoom, windowPos.y + 762 / zoom, 120 / zoom, 40 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 then
        for _FORV_5_, _FORV_6_ in ipairs(admins_table) do
          if selectUser == _FORV_6_.uid then
            if _FORV_6_.level == 4 or _FORV_6_.level == 3 or _FORV_6_.level == 2 then
              exports.st_gui:showPlayerNotification("Nie mo\197\188na", "error")
              return
            end
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "zmienRange", localPlayer, "AWANS", _FORV_6_.uid, _FORV_6_.level, _FORV_6_.date)
          end
        end
      end
    elseif isMouseIn(windowPos.x + 1035 / zoom, windowPos.y + 762 / zoom, 120 / zoom, 40 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 then
        for _FORV_5_, _FORV_6_ in ipairs(admins_table) do
          if selectUser == _FORV_6_.uid then
            if _FORV_6_.level == 4 or _FORV_6_.level == 3 or _FORV_6_.level == 2 then
              exports.st_gui:showPlayerNotification("Nie mo\197\188na", "error")
              return
            end
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "zmienRange", localPlayer, "DEGRAD", _FORV_6_.uid, _FORV_6_.level, _FORV_6_.date)
          end
        end
      end
    elseif isMouseIn(windowPos.x + 905 / zoom, windowPos.y + 762 / zoom, 120 / zoom, 40 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 35 then
        for _FORV_5_, _FORV_6_ in ipairs(admins_table) do
          if selectUser == _FORV_6_.uid then
            if _FORV_6_.level == 4 or _FORV_6_.level == 3 or _FORV_6_.level == 2 then
              exports.st_gui:showPlayerNotification("Nie mo\197\188na", "error")
              return
            end
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "zmienRange", localPlayer, "USUN", _FORV_6_.uid, _FORV_6_.level, _FORV_6_.date)
          end
        end
      end
    elseif isMouseIn(windowPos.x + 1247 / zoom, windowPos.y + 463 / zoom, 30 / zoom, 30 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 then
        selfHistory = {}
        windows.addHistoryAdm = true
        selfHistory.type = "awans"
        selfHistory.rank = "Helper"
        selfHistory.date = "normal"
      end
    elseif isMouseIn(windowPos.x + 1040 / zoom, windowPos.y + 168 / zoom, 80 / zoom, 20 / zoom, 5 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      exports.ST_gui:destroyCustomEditbox("customDateHistory")
      exports.ST_gui:createCustomEditbox("customDateHistory", "Data", windowPos.x + 950 / zoom, windowPos.y + 200 / zoom, windowPos.w - 1030 / zoom, 45 / zoom, false, "2050-12-31", "", 1)
    elseif isMouseIn(windowPos.x + 960 / zoom, windowPos.y + 140 / zoom, 50 / zoom, 20 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if selfHistory.type == "awans" then
        selfHistory.type = "degrad"
      elseif selfHistory.type == "degrad" then
        selfHistory.type = "odejscie"
      elseif selfHistory.type == "odejscie" then
        selfHistory.type = "powrot"
      elseif selfHistory.type == "powrot" then
        selfHistory.type = "awans"
      end
    elseif isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 140 / zoom, 70 / zoom, 20 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if selfHistory.rank == "Helper" then
        selfHistory.rank = "Support"
      elseif selfHistory.rank == "Support" then
        selfHistory.rank = "Moderator"
      elseif selfHistory.rank == "Moderator" then
        selfHistory.rank = "Global Moderator"
      elseif selfHistory.rank == "Global Moderator" then
        selfHistory.rank = "Administrator"
      elseif selfHistory.rank == "Administrator" then
        selfHistory.rank = "Developer"
      elseif selfHistory.rank == "Developer" then
        selfHistory.rank = "Administrator RCON"
      elseif selfHistory.rank == "Administrator RCON" then
        selfHistory.rank = "Project Manager"
      elseif selfHistory.rank == "Project Manager" then
        selfHistory.rank = "Helper"
      end
    elseif isMouseIn(windowPos.x + 1050 / zoom, windowPos.y + 300 / zoom, 120 / zoom, 40 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if 1 < exports.ST_gui:getCustomEditboxText("customDateHistory"):len() then
        dateText = exports.ST_gui:getCustomEditboxText("customDateHistory")
      elseif selfHistory.date == "normal" then
        dateText = "2022-" .. getRealTimeTak.month .. "-" .. getRealTimeTak.monthday .. ""
      end
      triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "addHistory", localPlayer, selectUser, selfHistory.type, selfHistory.rank, dateText)
    elseif isMouseIn(windowPos.x + 430 / zoom, windowPos.y + 369 / zoom, 15 / zoom, 15 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 35 then
        for _FORV_5_, _FORV_6_ in pairs(admins_table) do
          if selectUser == _FORV_6_.uid then
            if _FORV_6_.ostrzezenia == 3 then
              warnNumber = 2
            elseif _FORV_6_.ostrzezenia == 2 then
              warnNumber = 1
            elseif _FORV_6_.ostrzezenia == 1 then
              warnNumber = 0
            end
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "addWarn", localPlayer, warnNumber, _FORV_6_.uid)
          end
        end
      end
    elseif isMouseIn(windowPos.x + 460 / zoom, windowPos.y + 369 / zoom, 15 / zoom, 15 / zoom) and windows.selectCategory == "ADMINISTRATOR" then
      if getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 35 then
        for _FORV_5_, _FORV_6_ in pairs(admins_table) do
          if selectUser == _FORV_6_.uid then
            if _FORV_6_.ostrzezenia == 0 then
              warnNumber = 1
            elseif _FORV_6_.ostrzezenia == 1 then
              warnNumber = 2
            elseif _FORV_6_.ostrzezenia == 2 then
              warnNumber = 3
            end
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "addWarn", localPlayer, warnNumber, _FORV_6_.uid)
          end
        end
      end
    elseif isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) and windows.selectCategory == "ADMINISTRATOR" and getTickCount() - lastTickCount > 1000 then
      windows.selectCategory = "ADMINISTRACJA"
      lastTickCount = getTickCount()
    end
    if windows.background == true and windows.selectCategory == "INFORMACJE O GRACZU" then
      xX = 0
      for _FORV_5_, _FORV_6_ in ipairs(clickTableC) do
        xX = xX + 1
        if isMouseIn(windowPos.x + 535 / zoom + 155 / zoom * (xX - 1), windowPos.y + 645 / zoom, 150 / zoom, 63 / zoom) then
          if _FORV_6_[1] == "POJAZDY" then
            for _FORV_12_, _FORV_13_ in ipairs(info_users) do
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "showVehiclesUsers", localPlayer, _FORV_13_.id)
            end
            windows.selectCategory = "POJAZDY GRACZA"
            k1 = 1
            n1 = 15
            m1 = 15
          elseif _FORV_6_[1] == "KARY" then
            k1 = 1
            n1 = 21
            m1 = 21
            windows.selectCategory = "KARY GRACZA"
            for _FORV_12_, _FORV_13_ in ipairs(info_users) do
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "tablePenaltyList", localPlayer, _FORV_13_.id)
            end
          elseif _FORV_6_[1] == "EKWIPUNEK" then
            texturesInvetory = {
              shark_icon = dxCreateTexture(":ST_invetory/img/shark_icon.png"),
              amphetamines_icon = dxCreateTexture(":ST_invetory/img/amphetamines_icon.png"),
              coco_icon = dxCreateTexture(":ST_invetory/img/coco_icon.png"),
              repairkit_icon = dxCreateTexture(":ST_invetory/img/repairkit_icon.png"),
              firstaidkit_icon = dxCreateTexture(":ST_invetory/img/firstaidkit_icon.png"),
              trade_icon = dxCreateTexture(":ST_invetory/img/trade_icon.png"),
              weapons_icon = dxCreateTexture(":ST_invetory/img/weapons_icon.png"),
              all_icon = dxCreateTexture(":ST_invetory/img/all_icon.png"),
              drugs_icon = dxCreateTexture(":ST_invetory/img/drugs_icon.png"),
              weed_icon = dxCreateTexture(":ST_invetory/img/weed_icon.png"),
              weed1_icon = dxCreateTexture(":ST_invetory/img/weed1_icon.png"),
              knife_icon = dxCreateTexture(":ST_invetory/img/knife_icon.png"),
              ak47_icon = dxCreateTexture(":ST_invetory/img/ak47_icon.png"),
              m4_icon = dxCreateTexture(":ST_invetory/img/m4_icon.png"),
              seeds_icon = dxCreateTexture(":ST_invetory/img/seeds_icon.png"),
              ammo_icon = dxCreateTexture(":ST_invetory/img/ammo_icon.png"),
              fishing_rod_icon = dxCreateTexture(":ST_invetory/img/fishing_rod_icon.png"),
              mask_icon = dxCreateTexture(":ST_invetory/img/mask_icon.png"),
              canister_icon = dxCreateTexture(":ST_invetory/img/canister_icon.png"),
              handcuffs_icon = dxCreateTexture(":ST_invetory/img/handcuffs_icon.png"),
              deagle_icon = dxCreateTexture(":ST_invetory/img/deagle_icon.png"),
              sniper_icon = dxCreateTexture(":ST_invetory/img/sniper_icon.png"),
              uzi_icon = dxCreateTexture(":ST_invetory/img/uzi_icon.png"),
              obrzyn_icon = dxCreateTexture(":ST_invetory/img/obrzyn_icon.png"),
              mp5_icon = dxCreateTexture(":ST_invetory/img/mp5_icon.png"),
              baseball_icon = dxCreateTexture(":ST_invetory/img/baseball_icon.png"),
              tec9_icon = dxCreateTexture(":ST_invetory/img/tec9_icon.png"),
              carp_icon = dxCreateTexture(":ST_invetory/img/carp_icon.png"),
              cod_icon = dxCreateTexture(":ST_invetory/img/cod_icon.png"),
              mackerel_icon = dxCreateTexture(":ST_invetory/img/mackerel_icon.png"),
              pike_icon = dxCreateTexture(":ST_invetory/img/pike_icon.png"),
              shovel_icon = dxCreateTexture(":ST_invetory/img/shovel_icon.png"),
              fish_icon = dxCreateTexture(":ST_invetory/img/fish_icon.png"),
              search_icon = dxCreateTexture(":ST_invetory/img/search_icon.png"),
              combat_icon = dxCreateTexture(":ST_invetory/img/combat_icon.png"),
              loot_black = dxCreateTexture(":ST_invetory/img/loot_black.png"),
              loot_red = dxCreateTexture(":ST_invetory/img/loot_red.png"),
              loot_orange = dxCreateTexture(":ST_invetory/img/loot_orange.png"),
              loot_green = dxCreateTexture(":ST_invetory/img/loot_green.png"),
              tshirt_icon = dxCreateTexture(":ST_invetory/img/tshirt_icon.png"),
              isopropanol_icon = dxCreateTexture(":ST_invetory/img/isopropanol_icon.png"),
              mercury_nitrate_icon = dxCreateTexture(":ST_invetory/img/mercury_nitrate_icon.png"),
              acetic_acid_icon = dxCreateTexture(":ST_invetory/img/acetic_acid_icon.png"),
              methyl_chloride_icon = dxCreateTexture(":ST_invetory/img/methyl_chloride_icon.png"),
              dioxane_icon = dxCreateTexture(":ST_invetory/img/dioxane_icon.png"),
              coca_leaves_icon = dxCreateTexture(":ST_invetory/img/coca_leaves_icon.png"),
              mdma_icon = dxCreateTexture(":ST_invetory/img/mdma_icon.png"),
              camera_icon = dxCreateTexture(":ST_invetory/img/camera_icon.png"),
              trunk_icon = dxCreateTexture(":ST_invetory/img/trunk_icon.png"),
              water_icon = dxCreateTexture(":ST_invetory/img/water_icon.png"),
              parachute_icon = dxCreateTexture(":ST_invetory/img/parachute_icon.png")
            }
            settings_item = {
              {
                "Rekin",
                texturesInvetory.shark_icon,
                "-"
              },
              {
                "Amfetamina",
                texturesInvetory.amphetamines_icon,
                "Za\197\188yj"
              },
              {
                "Kokaina",
                texturesInvetory.coco_icon,
                "Za\197\188yj"
              },
              {
                "MDMA",
                texturesInvetory.mdma_icon,
                "Za\197\188yj"
              },
              {
                "Zestaw naprawczy",
                texturesInvetory.repairkit_icon,
                "Napraw"
              },
              {
                "Apteczka",
                texturesInvetory.firstaidkit_icon,
                "U\197\188yj"
              },
              {
                "Marihuana sativa",
                texturesInvetory.weed_icon,
                "Zapal"
              },
              {
                "Marihuana indica",
                texturesInvetory.weed_icon,
                "Zapal"
              },
              {
                "Przerobiona marihuana sativa",
                texturesInvetory.weed1_icon,
                "Zapal"
              },
              {
                "Przerobiona marihuana indica",
                texturesInvetory.weed1_icon,
                "Zapal"
              },
              {
                "Noz",
                texturesInvetory.knife_icon,
                useNoz
              },
              {
                "AK47",
                texturesInvetory.ak47_icon,
                useAK47
              },
              {
                "M4",
                texturesInvetory.m4_icon,
                useM4
              },
              {
                "Nasiona indica",
                texturesInvetory.seeds_icon,
                "Zasad\197\186"
              },
              {
                "Nasiona sativa",
                texturesInvetory.seeds_icon,
                "Zasad\197\186"
              },
              {
                "Amunicja",
                texturesInvetory.ammo_icon,
                "-"
              },
              {
                "Izopropanol",
                texturesInvetory.isopropanol_icon,
                "-"
              },
              {
                "Liscie koki",
                texturesInvetory.coca_leaves_icon,
                "-"
              },
              {
                "Azotan rteci",
                texturesInvetory.mercury_nitrate_icon,
                "-"
              },
              {
                "Kwas octowy",
                texturesInvetory.acetic_acid_icon,
                "-"
              },
              {
                "Chlorek metylu",
                texturesInvetory.methyl_chloride_icon,
                "-"
              },
              {
                "Dioksan",
                texturesInvetory.dioxane_icon,
                "-"
              },
              {
                "Wedka",
                texturesInvetory.fishing_rod_icon,
                useWedka
              },
              {
                "Maska",
                texturesInvetory.mask_icon,
                useMask
              },
              {
                "Kanister",
                texturesInvetory.canister_icon,
                "Dolej"
              },
              {
                "Kajdanki",
                texturesInvetory.handcuffs_icon,
                "-"
              },
              {
                "Deagle",
                texturesInvetory.deagle_icon,
                useDeagle
              },
              {
                "Karabin snajperski",
                texturesInvetory.sniper_icon,
                useSniper
              },
              {
                "Uzi",
                texturesInvetory.uzi_icon,
                useUzi
              },
              {
                "Obrzyn",
                texturesInvetory.obrzyn_icon,
                useObrzyn
              },
              {
                "MP5",
                texturesInvetory.mp5_icon,
                useMP5
              },
              {
                "Bejsbol",
                texturesInvetory.baseball_icon,
                useBejsbol
              },
              {
                "Tec9",
                texturesInvetory.tec9_icon,
                useTec9
              },
              {
                "Karp",
                texturesInvetory.carp_icon,
                "-"
              },
              {
                "Dorsz",
                texturesInvetory.cod_icon,
                "-"
              },
              {
                "Makrela",
                texturesInvetory.mackerel_icon,
                "-"
              },
              {
                "Szczupak",
                texturesInvetory.pike_icon,
                "-"
              },
              {
                "\197\129opata",
                texturesInvetory.shovel_icon,
                useLopata
              },
              {
                "Strzelba bojowa",
                texturesInvetory.combat_icon,
                useStrzelba
              },
              {
                "Paczka czarna",
                texturesInvetory.loot_black,
                "Otw\195\179rz"
              },
              {
                "Paczka czerwona",
                texturesInvetory.loot_red,
                "Otw\195\179rz"
              },
              {
                "Paczka pomaranczowa",
                texturesInvetory.loot_orange,
                "Otw\195\179rz"
              },
              {
                "Paczka zielona",
                texturesInvetory.loot_green,
                "Otw\195\179rz"
              },
              {
                "Skin",
                texturesInvetory.tshirt_icon,
                "U\197\188yj"
              },
              {
                "Aparat",
                texturesInvetory.camera_icon,
                useAparat
              },
              {
                "Woda",
                texturesInvetory.water_icon,
                "Napij si\196\153"
              },
              {
                "Spadochron",
                texturesInvetory.parachute_icon,
                "Za\197\130\195\179\197\188"
              }
            }
            k1 = 1
            n1 = 21
            m1 = 21
            windows.selectCategory = "EKWIPUNEK GRACZA"
            selfInvetory = {}
            selfInvetory.select = nil
            for _FORV_12_, _FORV_13_ in ipairs(info_users) do
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "showInvetory", localPlayer, _FORV_13_.id)
            end
          end
        end
      end
      if isMouseIn(windowPos.x + 535 / zoom, windowPos.y + 730 / zoom, windowPos.w - 840 / zoom, 63 / zoom) then
        windows.selectCategory = "NADAWANIE KARY"
        selfKara = {}
        selfKara.typeTime = {"DNI", "d"}
        selfKara.type = "MUTE"
        exports.ST_gui:createCustomEditbox("search", "Ilo\197\155\196\135", windowPos.x + 620 / zoom, windowPos.y + 420 / zoom, windowPos.w - 1010 / zoom, 50 / zoom, false, "", "", 1)
        exports.ST_gui:createCustomEditbox("addAdmins", "Pow\195\179d", windowPos.x + 620 / zoom, windowPos.y + 480 / zoom, windowPos.w - 1010 / zoom, 50 / zoom, false, "", "", 1)
      end
    end
    if windows.background == true and windows.selectCategory == "INFORMACJE O GRACZU" then
      for _FORV_5_, _FORV_6_ in ipairs(info_users) do
        xY = 0
        for _FORV_10_, _FORV_11_ in ipairs(tableInfoUsers) do
          xY = xY + 1
          if isMouseIn(windowPos.x + 238 / zoom, windowPos.y + 199 / zoom + 45 / zoom * (xY - 1), 12 / zoom, 12 / zoom) and (getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 35) and _FORV_11_.zerowanie then
            if _FORV_11_.zerowanie == 0 then
              exports.st_gui:showPlayerNotification("Ju\197\188 jest puste", "info")
            else
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "resetUsers", localPlayer, _FORV_6_.id, _FORV_11_.zerowanie, _FORV_11_.name, _FORV_11_.nameDataBase)
            end
          end
        end
      end
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(karyTable) do
        xY = xY + 1
        if _FORV_6_[2] then
          if _FORV_6_[1] == "Mute" and isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 550 / zoom, 190 / zoom, 80 / zoom) then
            for _FORV_11_, _FORV_12_ in ipairs(info_users) do
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "usunKare", localPlayer, _FORV_6_[1], _FORV_12_.id, _FORV_12_.login)
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchPlayer", localPlayer, true, tonumber(_FORV_12_.id))
            end
          end
          if _FORV_6_[1] == "Prawko" and isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 640 / zoom, 190 / zoom, 80 / zoom) then
            for _FORV_11_, _FORV_12_ in ipairs(info_users) do
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "usunKare", localPlayer, _FORV_6_[1], _FORV_12_.id, _FORV_12_.login)
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchPlayer", localPlayer, true, tonumber(_FORV_12_.id))
            end
          end
          if _FORV_6_[1] == "Ban" and isMouseIn(windowPos.x + 1100 / zoom, windowPos.y + 730 / zoom, 190 / zoom, 80 / zoom) then
            for _FORV_11_, _FORV_12_ in ipairs(info_users) do
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "usunKare", localPlayer, _FORV_6_[1], _FORV_12_.id, _FORV_12_.login)
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchPlayer", localPlayer, true, tonumber(_FORV_12_.id))
            end
          end
        end
      end
    end
    if windows.background == true and windows.selectCategory == "POJAZDY GRACZA" then
      xY = 0
      for _FORV_5_, _FORV_6_ in ipairs(vehicle_table) do
        if _FORV_5_ >= k1 and _FORV_5_ <= n1 then
          xY = xY + 1
          if isMouseIn(windowPos.x + 1185 / zoom, windowPos.y + 80 / zoom + 49 / zoom * (xY - 1), 100 / zoom, 35 / zoom) then
            if getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 then
              triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "deleteVehicles", localPlayer, tonumber(_FORV_6_.id), tonumber(_FORV_6_.ownedPlayer), exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_6_.model), _FORV_6_.custom_model), true)
            end
          elseif isMouseIn(windowPos.x + 240 / zoom, windowPos.y + 75 / zoom + 49 / zoom * (xY - 1), 800 / zoom, 45 / zoom) then
            last_table = vehicle_table
            triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchVehicle", localPlayer, tonumber(_FORV_6_.id))
          end
        end
      end
    end
    if isMouseIn(windowPos.x + 10 / zoom, windowPos.y + 770 / zoom, 30 / zoom, 30 / zoom) and windows.background == true then
      if isElement(myObject) then
        exports.ST_object_preview:destroyObjectPreview(myObject)
      end
      if isElement(vehicle3D) then
        destroyElement(vehicle3D)
      end
      exports.ST_gui:destroyCustomEditbox("addAdmins")
      removeEventHandler("onClientRender", root, window)
      removeEventHandler("onClientClick", root, click)
      removeEventHandler("onClientKey", root, key)
      showCursor(false)
      windows.background = false
      windows.selectCategory = false
      for _FORV_5_, _FORV_6_ in pairs(textures) do
        if isElement(_FORV_6_) then
          destroyElement(_FORV_6_)
        end
      end
      textures = {}
      last_table = false
    elseif isMouseIn(windowPos.x + 1239 / zoom, windowPos.y + 759 / zoom, 46 / zoom, 46 / zoom) and windows.selectCategory == "ADMINISTRACJA" then
      if getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 35 or getElementData(localPlayer, "player:level") == 25 then
        if exports.ST_gui:getCustomEditboxText("addAdmins"):len() <= 0 or exports.ST_gui:getCustomEditboxText("addAdmins"):len() > 14 then
          exports.st_gui:showPlayerNotification("UID powinien zawiera\196\135 od 0 do 14 znak\195\179w!", "error")
          return
        end
        if tonumber((exports.ST_gui:getCustomEditboxText("addAdmins"))) == tonumber(getElementData(localPlayer, "player:sid")) then
          exports.st_gui:showPlayerNotification("Nie mo\197\188esz doda\196\135 siebie", "error")
          return
        end
        for _FORV_6_, _FORV_7_ in ipairs(admins_table) do
          if _FORV_7_[1] == tonumber((exports.ST_gui:getCustomEditboxText("addAdmins"))) then
            exports.st_gui:showPlayerNotification("Ju\197\188 jest", "error")
            return
          end
        end
        if tonumber((exports.ST_gui:getCustomEditboxText("addAdmins"))) then
          triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "addAdmins", localPlayer, tonumber((exports.ST_gui:getCustomEditboxText("addAdmins"))))
        end
      end
    elseif isMouseIn(windowPos.x + 655 / zoom, windowPos.y + 480 / zoom, 200 / zoom, 60 / zoom) and windows.selectCategory == "WYSZUKAJ GRACZA" then
      if exports.ST_gui:getCustomEditboxText("search"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 id / nick", "error")
        return
      end
      info_users = {}
      avatarPlayer = false
      if tonumber((exports.ST_gui:getCustomEditboxText("search"))) then
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchPlayer", localPlayer, true, tonumber((exports.ST_gui:getCustomEditboxText("search"))))
      else
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchPlayer", localPlayer, false, (exports.ST_gui:getCustomEditboxText("search")))
      end
      vehicle_table = {}
    elseif isMouseIn(windowPos.x + 655 / zoom, windowPos.y + 480 / zoom, 200 / zoom, 60 / zoom) and windows.selectCategory == "WYSZUKAJ POJAZD" then
      if exports.ST_gui:getCustomEditboxText("search"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wprowad\197\186 id", "error")
        return
      end
      info_users = {}
      if tonumber((exports.ST_gui:getCustomEditboxText("search"))) then
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "searchVehicle", localPlayer, tonumber((exports.ST_gui:getCustomEditboxText("search"))))
      end
      vehicle_table = {}
    elseif isMouseIn(windowPos.x + 970 / zoom, windowPos.y + 720 / zoom, 250 / zoom, 70 / zoom) and windows.selectCategory == "INFORMACJE O POJE\197\185DZIE" then
      if getElementData(localPlayer, "player:level") == 3 or getElementData(localPlayer, "player:level") == 4 or getElementData(localPlayer, "player:level") == 25 or getElementData(localPlayer, "player:level") == 35 then
        for _FORV_5_, _FORV_6_ in ipairs(vehicle_table) do
          triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "deleteVehicles", localPlayer, tonumber(_FORV_6_.id), tonumber(_FORV_6_.ownedPlayer), exports.ST_core:changeNameClient(getVehicleNameFromModel(_FORV_6_.model), _FORV_6_.custom_model))
        end
      else
        exports.st_gui:showPlayerNotification("Brak dost\196\153pu", "error")
      end
    elseif isMouseIn(windowPos.x + windowPos.w - 61 / zoom, windowPos.y + 17 / zoom, 42 / zoom, 42 / zoom) and (windows.selectCategory == "INFORMACJE O POJE\197\185DZIE" or windows.selectCategory == "NADAWANIE KARY" or windows.selectCategory == "KARY GRACZA" or windows.selectCategory == "POJAZDY GRACZA" or windows.selectCategory == "EKWIPUNEK GRACZA") then
      if windows.selectCategory == "INFORMACJE O POJE\197\185DZIE" then
        if last_table then
          vehicle_table = last_table
          windows.selectCategory = "POJAZDY GRACZA"
          last_table = false
          if isElement(myObject) then
            exports.ST_object_preview:destroyObjectPreview(myObject)
          end
          if isElement(vehicle3D) then
            destroyElement(vehicle3D)
          end
        end
      elseif windows.selectCategory == "KARY GRACZA" then
        windows.selectCategory = "INFORMACJE O GRACZU"
      elseif windows.selectCategory == "POJAZDY GRACZA" then
        windows.selectCategory = "INFORMACJE O GRACZU"
      elseif windows.selectCategory == "EKWIPUNEK GRACZA" then
        windows.selectCategory = "INFORMACJE O GRACZU"
      elseif windows.selectCategory == "NADAWANIE KARY" then
        windows.selectCategory = "INFORMACJE O GRACZU"
      end
    elseif isMouseIn(windowPos.x + 440 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      selfKara.type = "MUTE"
    elseif isMouseIn(windowPos.x + 605 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      selfKara.type = "PRAWKO"
    elseif isMouseIn(windowPos.x + 770 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      selfKara.type = "BAN"
    elseif isMouseIn(windowPos.x + 935 / zoom, windowPos.y + 245 / zoom, 150 / zoom, 50 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      selfKara.type = "PERM"
    elseif isMouseIn(windowPos.x + 690 / zoom, windowPos.y + 370 / zoom, 25 / zoom, 25 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      if selfKara.typeTime[1] == "MIESI\196\132C" then
        selfKara.typeTime[1] = "DNI"
        selfKara.typeTime[2] = "d"
      elseif selfKara.typeTime[1] == "DNI" then
        selfKara.typeTime[1] = "GODZINA"
        selfKara.typeTime[2] = "h"
      elseif selfKara.typeTime[1] == "GODZINA" then
        selfKara.typeTime[1] = "MINUTY"
        selfKara.typeTime[2] = "m"
      elseif selfKara.typeTime[1] == "MINUTY" then
        selfKara.typeTime[1] = "MIESI\196\132C"
        selfKara.typeTime[2] = "w"
      end
    elseif isMouseIn(windowPos.x + 800 / zoom, windowPos.y + 370 / zoom, 25 / zoom, 25 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      if selfKara.typeTime[1] == "MINUTY" then
        selfKara.typeTime[1] = "GODZINA"
        selfKara.typeTime[2] = "h"
      elseif selfKara.typeTime[1] == "GODZINA" then
        selfKara.typeTime[1] = "DNI"
        selfKara.typeTime[2] = "d"
      elseif selfKara.typeTime[1] == "DNI" then
        selfKara.typeTime[1] = "MIESI\196\132C"
        selfKara.typeTime[2] = "w"
      elseif selfKara.typeTime[1] == "MIESI\196\132C" then
        selfKara.typeTime[1] = "MINUTY"
        selfKara.typeTime[2] = "m"
      end
    elseif isMouseIn(windowPos.x + 665 / zoom, windowPos.y + 550 / zoom, 200 / zoom, 60 / zoom) and windows.selectCategory == "NADAWANIE KARY" then
      if selfKara.type ~= "PERM" and (exports.ST_gui:getCustomEditboxText("search"):len() <= 0 or exports.ST_gui:getCustomEditboxText("search"):len() > 14) then
        exports.st_gui:showPlayerNotification("Wpisz czas", "error")
        return
      end
      if exports.ST_gui:getCustomEditboxText("addAdmins"):len() < 1 then
        exports.st_gui:showPlayerNotification("Wpisz pow\195\179d", "error")
        return
      end
      for _FORV_7_, _FORV_8_ in ipairs(info_users) do
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "nadajKare", localPlayer, _FORV_8_.id, selfKara.typeTime, selfKara.type, exports.ST_gui:getCustomEditboxText("search"), (exports.ST_gui:getCustomEditboxText("addAdmins")))
      end
    elseif isMouseIn(windowPos.x + 655 / zoom, windowPos.y + 440 / zoom, 200 / zoom, 60 / zoom) and windows.selectCategory == "PREZENTY" then
      if getRealTimeTak.hour >= 18 then
        if #prezenty_table == #prezenty then
          exports.st_gui:showPlayerNotification("Nie ma wi\196\153cej prezent\195\179w", "error")
          return
        end
        if blockOpenGift then
          return
        end
        blockOpenGift = true
        for _FORV_7_, _FORV_8_ in ipairs(prezenty_table) do
          if getElementData(localPlayer, "player:sid") == _FORV_8_.uid then
            exports.st_gui:showPlayerNotification("Ju\197\188 odebra\197\130e\197\155/a\197\155 prezent", "info")
            return
          end
        end
        losowaniePrezentu()
      else
        exports.st_gui:showPlayerNotification("Losowanie b\196\153dzie mo\197\188liwe po godzinie 18", "info")
      end
    elseif isMouseIn(windowPos.x + 785 / zoom, windowPos.y + 180 / zoom, 180 / zoom, 55 / zoom) and windows.selectCategory == "SKRYPTY" then
      if selectScript then
        selectScript[2] = "running"
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "restartScript", localPlayer, "start", selectScript[1])
      end
    elseif isMouseIn(windowPos.x + 785 / zoom, windowPos.y + 250 / zoom, 180 / zoom, 55 / zoom) and windows.selectCategory == "SKRYPTY" then
      if selectScript then
        if selectScript[2] == "loaded" then
          exports.st_gui:showPlayerNotification("Skrypt jest wy\197\130\196\133czony", "error")
          return
        end
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "restartScript", localPlayer, "restart", selectScript[1])
      end
    elseif isMouseIn(windowPos.x + 785 / zoom, windowPos.y + 320 / zoom, 180 / zoom, 55 / zoom) and windows.selectCategory == "SKRYPTY" and selectScript then
      selectScript[2] = "loaded"
      triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "restartScript", localPlayer, "stop", selectScript[1])
    end
  end
end
function losowaniePrezentu()
  for _FORV_4_, _FORV_5_ in ipairs(prezenty_table) do
    if math.random(1, #prezenty) == _FORV_5_.id then
      losowaniePrezentu()
      print("szuka nowego prezentu - " .. math.random(1, 99999))
      return
    end
  end
  for _FORV_4_, _FORV_5_ in ipairs(prezenty) do
    if math.random(1, #prezenty) == _FORV_4_ then
      print(_FORV_5_ .. " - " .. math.random(1, 99999))
      triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "odbierzPrezent", localPlayer, _FORV_4_, _FORV_5_)
    end
  end
end
animations = {progressBackground = 200}
function renderingInfo()
  dxDrawRectangle(_UPVALUE0_.x, _UPVALUE0_.y + animations.progressBackground, _UPVALUE0_.w, _UPVALUE0_.h, tocolor(0, 0, 0, 155), false)
  dxDrawText(xtext:gsub("#%x%x%x%x%x%x", ""), _UPVALUE0_.x + 5 / zoom, _UPVALUE0_.y + animations.progressBackground, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 175, 0, 255), 1 / zoom, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, false, false)
end
function key(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse_wheel_up" then
    if windows.selectCategory == "ADMINISTRACJA" then
      if _UPVALUE0_ == _UPVALUE1_ then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ - 1
      _UPVALUE0_ = _UPVALUE0_ - 1
    elseif windows.selectCategory == "POJAZDY GRACZA" or windows.selectCategory == "KARY GRACZA" then
      if n1 == m1 then
        return
      end
      k1 = k1 - 1
      n1 = n1 - 1
    elseif windows.selectCategory == "ADMINISTRATOR" or windows.selectCategory == "SKRYPTY" then
      if n1 == m1 then
        return
      end
      k1 = k1 - 1
      n1 = n1 - 1
    end
  elseif _ARG_0_ == "mouse_wheel_down" then
    if windows.selectCategory == "ADMINISTRACJA" then
      if _UPVALUE0_ >= #admins_table then
        return
      end
      _UPVALUE2_ = _UPVALUE2_ + 1
      _UPVALUE0_ = _UPVALUE0_ + 1
    elseif windows.selectCategory == "ADMINISTRATOR" then
      if n1 >= #historyAdm_table then
        return
      end
      k1 = k1 + 1
      n1 = n1 + 1
    elseif windows.selectCategory == "POJAZDY GRACZA" then
      if n1 >= #vehicle_table then
        return
      end
      k1 = k1 + 1
      n1 = n1 + 1
    elseif windows.selectCategory == "KARY GRACZA" then
      if n1 >= #penalty_table then
        return
      end
      k1 = k1 + 1
      n1 = n1 + 1
    elseif windows.selectCategory == "SKRYPTY" then
      if n1 >= #script_table then
        return
      end
      k1 = k1 + 1
      n1 = n1 + 1
    end
  end
end
function dxDrawScrollBar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(20, 20, 20, 255))
  if _ARG_5_ < _ARG_0_ then
    if _ARG_6_ == 1 then
      scrollbarPos = _ARG_2_
    elseif 0 < _ARG_6_ then
      scrollbarPos = _ARG_6_ * (_ARG_4_ / _ARG_0_) + _ARG_2_
    end
    if _ARG_0_ <= _ARG_5_ then
    end
    dxDrawRoundedRectangle(_ARG_1_, scrollbarPos, _ARG_3_, _ARG_4_ * (_ARG_5_ - 1), 3 / zoom, tocolor(255, 187, 0, 255))
  else
    dxDrawRoundedRectangle(_ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, 3 / zoom, tocolor(255, 187, 0, 255))
  end
end
function getPlayersFromText(_ARG_0_)
  script_table = {}
  for _FORV_4_, _FORV_5_ in pairs(script_table_base) do
    if string.find(_FORV_5_[1], _ARG_0_) then
      if typeSort then
        table.insert(script_table, {
          _FORV_5_[1],
          _FORV_5_[2]
        })
      else
        table.insert(script_table, _FORV_5_)
      end
    end
  end
  return script_table
end
getResourceName(getThisResource(), true, 212010138)
return
