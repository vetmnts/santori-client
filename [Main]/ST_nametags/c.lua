players = getElementsWithinRange(getElementPosition(localPlayer))
tableInfo = {}
function render()
  for _FORV_6_, _FORV_7_ in pairs(tableInfo) do
    if isElement(_FORV_7_[2]) then
      if getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) then
        for _FORV_17_, _FORV_18_ in pairs(_FORV_7_[3]) do
          dxDrawImage(getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) - (_UPVALUE0_[#_FORV_7_[3]] or 110) + 31 * (_FORV_17_ - 0.2), getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) - 40, 30, 30, "img/" .. _FORV_18_ .. "")
        end
        dxDrawText(string.gsub(_FORV_7_[1], "#%x%x%x%x%x%x", ""), getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) + 1, getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) + 1, getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) + 1, getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) + 1, tocolor(0, 0, 0, 255), 1, font13, "center", "center", false, false, false, true, true)
        dxDrawText(_FORV_7_[1], getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)))
        dxDrawText(_FORV_7_[4], getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)))
      end
      if getElementData(_FORV_7_[2], "player:opis") and getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 1)) then
        dxDrawText(getElementData(_FORV_7_[2], "player:opis"), getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 1)))
      end
    end
  end
  if getScreenFromWorldPosition(getPedBonePosition(localPlayer, 1)) and getElementData(localPlayer, "player:opis") then
    dxDrawText(getElementData(localPlayer, "player:opis"), getScreenFromWorldPosition(getPedBonePosition(localPlayer, 1)))
  end
end
function render2()
  for _FORV_6_, _FORV_7_ in pairs(tableInfo) do
    if isElement(_FORV_7_[2]) and getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)) then
      dxDrawText(_FORV_7_[1], getScreenFromWorldPosition(getPedBonePosition(_FORV_7_[2], 8)))
    end
  end
end
addEventHandler("onClientResourceStart", getResourceRootElement(getThisResource()), function()
  triggerServerEvent("ev", resourceRoot, "showInfo", localPlayer)
  for _FORV_3_, _FORV_4_ in ipairs(getElementsByType("player")) do
    setPlayerNametagShowing(_FORV_4_, false)
  end
end)
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_0_ == "showInfoClient" then
    for _FORV_9_, _FORV_10_ in ipairs(_ARG_1_) do
      if _FORV_10_.settings_nametags == 1 then
        enableNametags(_FORV_10_.settings_nametags, _FORV_10_.settings_showNametag)
      else
        enableNametags(_FORV_10_.settings_nametags, _FORV_10_.settings_showNametag)
      end
    end
  end
end)
function enableNametags(_ARG_0_, _ARG_1_)
  if isEventHandlerAdded("onClientRender", root, render) then
    removeEventHandler("onClientRender", root, render)
  elseif isEventHandlerAdded("onClientRender", root, render2) then
    removeEventHandler("onClientRender", root, render2)
  end
  if _ARG_1_ == 1 then
    pokazSwojNametag = true
  else
    pokazSwojNametag = false
  end
  font13 = exports.ST_gui:getGUIFont("fontBold_14")
  if _ARG_0_ == 1 then
    if not isEventHandlerAdded("onClientRender", root, render) then
      if isTimer(timer) then
        killTimer(timer)
      end
      addEventHandler("onClientRender", root, render2)
      timer = setTimer(function()
        if getElementData(localPlayer, "czypokazacnametag") then
          return
        end
        tableInfo = {}
        for _FORV_7_, _FORV_8_ in pairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
          if getElementDimension(localPlayer) == getElementDimension(_FORV_8_) and getElementInterior(localPlayer) == getElementInterior(_FORV_8_) and getElementAlpha(_FORV_8_) > 50 and (pokazSwojNametag or _FORV_8_ ~= localPlayer) then
            if getElementData(_FORV_8_, "voice:mowi") then
            else
            end
            if getElementData(_FORV_8_, "player:elementDat").settings_rp == 1 then
            else
            end
            if tonumber(getElementData(_FORV_8_, "player:level")) == 1 then
              rank = "Support"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 11 then
              rank = "Helper"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 15 then
              rank = "Moderator"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 17 then
              rank = "Global Moderator"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 2 then
              rank = "Administrator"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 25 then
              rank = "Administrator RCON"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 3 then
              rank = "Developer"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 35 then
              rank = "Project Manager"
            elseif tonumber(getElementData(_FORV_8_, "player:level")) == 4 then
              rank = "Owner"
            elseif getElementData(_FORV_8_, "player:premium") then
              rank = "Premium"
            else
              rank = "Gracz"
            end
            table.insert(tableInfo, {
              "" .. "" .. " " .. "" .. " #" .. _UPVALUE0_[rank] .. "[" .. getElementData(_FORV_8_, "id") .. "] " .. getElementData(_FORV_8_, "player:elementDat").color_nickName .. "" .. getPlayerName(_FORV_8_):gsub("#%x%x%x%x%x%x", "") .. "",
              _FORV_8_
            })
          end
        end
        if isChatBoxInputActive() then
          if not exports.ST_datasystem:getCustomData(localPlayer, "chat_typing", "synced") then
            triggerServerEvent("ev", resourceRoot, "chat_typing", true)
          end
        elseif exports.ST_datasystem:getCustomData(localPlayer, "chat_typing", "synced") == true then
          triggerServerEvent("ev", resourceRoot, "chat_typing", false)
        end
      end, 1000, 0)
    end
  elseif not isEventHandlerAdded("onClientRender", root, render) then
    if isTimer(timer) then
      killTimer(timer)
    end
    addEventHandler("onClientRender", root, render)
    timer = setTimer(function()
      if getElementData(localPlayer, "czypokazacnametag") then
        return
      end
      tableInfo = {}
      for _FORV_7_, _FORV_8_ in pairs((getElementsWithinRange(getElementPosition(localPlayer)))) do
        if getElementDimension(localPlayer) == getElementDimension(_FORV_8_) and getElementInterior(localPlayer) == getElementInterior(_FORV_8_) and getElementAlpha(_FORV_8_) > 50 and (pokazSwojNametag or _FORV_8_ ~= localPlayer) and getElementData(_FORV_8_, "player:elementDat") then
          liczbaikonek = {}
          if exports.ST_datasystem:getCustomData(_FORV_8_, "chat_typing", "synced") then
            table.insert(liczbaikonek, "chat.png")
          end
          if getElementData(_FORV_8_, "voice:mowi") then
            table.insert(liczbaikonek, "voice.png")
          end
          if getElementData(_FORV_8_, "player:bw") then
            table.insert(liczbaikonek, "death.png")
          end
          if getElementData(_FORV_8_, "player:nacpany") == "MARIHUANA" then
            table.insert(liczbaikonek, "weed.png")
          elseif getElementData(_FORV_8_, "player:nacpany") == "KOKAINA" then
            table.insert(liczbaikonek, "cocaine.png")
          elseif getElementData(_FORV_8_, "player:nacpany") == "AMFETAMINA" then
            table.insert(liczbaikonek, "amphetamine.png")
          elseif getElementData(_FORV_8_, "player:nacpany") == "MDMA" then
            table.insert(liczbaikonek, "mdma.png")
          elseif getElementData(_FORV_8_, "player:nacpany") == "Morfina" then
            table.insert(liczbaikonek, "morphine.png")
          elseif getElementData(_FORV_8_, "player:nacpany") == "Mefedron" then
            table.insert(liczbaikonek, "mephedrone.png")
          elseif getElementData(_FORV_8_, "player:nacpany") == "LSD" then
            table.insert(liczbaikonek, "lsd.png")
          end
          if getElementData(_FORV_8_, "org:group") then
            table.insert(liczbaikonek, "group.png")
          end
          if getElementData(_FORV_8_, "player:elementDat").settings_rp == 1 then
            table.insert(liczbaikonek, "rp.png")
          end
          if getElementData(_FORV_8_, "player:premium") then
            table.insert(liczbaikonek, "premium.png")
          end
          if getElementData(_FORV_8_, "player:elementDat").nitro_discord == 1 then
            table.insert(liczbaikonek, "nitro.png")
          end
          if exports.ST_datasystem:getCustomData(_FORV_8_, "player:afk", "synced") then
            table.insert(liczbaikonek, "afk.png")
          end
          if getElementData(_FORV_8_, "mute:player") then
            table.insert(liczbaikonek, "mute.png")
          end
          if tonumber(getElementData(_FORV_8_, "player:level")) == 1 then
            rank = "Support"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 11 then
            rank = "Helper"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 15 then
            rank = "Moderator"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 17 then
            rank = "Global Moderator"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 2 then
            rank = "Administrator"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 25 then
            rank = "Administrator RCON"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 3 then
            rank = "Developer"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 35 then
            rank = "Project Manager"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 4 then
            rank = "Owner"
          elseif getElementData(_FORV_8_, "player:premium") then
            rank = "Premium"
          else
            rank = "Gracz"
          end
          if tonumber(getElementData(_FORV_8_, "player:level")) == 1 then
            rankName = "Support"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 11 then
            rankName = "Helper"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 15 then
            rankName = "Moderator"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 17 then
            rankName = "Global Moderator"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 2 then
            rankName = "Administrator"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 25 then
            rankName = "Administrator RCON"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 3 then
            rankName = "Developer"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 35 then
            rankName = "Project Manager"
          elseif tonumber(getElementData(_FORV_8_, "player:level")) == 4 then
            rankName = "Owner"
          elseif getElementData(_FORV_8_, "player:factionMedic") then
            rankName = "#00c3ffMedyk"
          elseif getElementData(_FORV_8_, "player:faction") == "SAFD" then
            rankName = "#c90d00San Andreas Fire Department"
          else
            rankName = ""
          end
          table.insert(tableInfo, {
            "#" .. _UPVALUE0_[rank] .. "[" .. getElementData(_FORV_8_, "id") .. "] " .. getElementData(_FORV_8_, "player:elementDat").color_nickName .. "" .. getPlayerName(_FORV_8_):gsub("#%x%x%x%x%x%x", "") .. "",
            _FORV_8_,
            liczbaikonek,
            "#" .. _UPVALUE0_[rank] .. "" .. rankName .. ""
          })
        end
      end
      if isChatBoxInputActive() then
        if not exports.ST_datasystem:getCustomData(localPlayer, "chat_typing", "synced") then
          triggerServerEvent("ev", resourceRoot, "chat_typing", true)
        end
      elseif exports.ST_datasystem:getCustomData(localPlayer, "chat_typing", "synced") == true then
        triggerServerEvent("ev", resourceRoot, "chat_typing", false)
      end
    end, 600, 0)
  end
end
addEventHandler("onClientPlayerJoin", root, function()
  setPlayerNametagShowing(source, false)
end)
function isEventHandlerAdded(_ARG_0_, _ARG_1_, _ARG_2_)
  if type(_ARG_0_) == "string" and isElement(_ARG_1_) and type(_ARG_2_) == "function" and type((getEventHandlers(_ARG_0_, _ARG_1_))) == "table" and #getEventHandlers(_ARG_0_, _ARG_1_) > 0 then
    for _FORV_7_, _FORV_8_ in ipairs((getEventHandlers(_ARG_0_, _ARG_1_))) do
      if _FORV_8_ == _ARG_2_ then
        return true
      end
    end
  end
  return false
end
getResourceName(getThisResource(), true, 269774358)
return
