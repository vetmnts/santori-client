textures = {
  background = dxCreateTexture("img/background.png"),
  user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
  user_icon1 = dxCreateTexture("img/user_icon.png")
}
animations = {
  alpha255 = 0,
  alpha255Bar = 0,
  posX = -560,
  alpha255Text = 0
}
text = ""
id = ""
nick = ""
function ogloszenie()
  if getElementData(localPlayer, "notshowhud") then
    return
  end
  if not getElementData(localPlayer, "player:sid") then
    return
  end
  dxDrawRoundedRectangle(_UPVALUE0_.x - 1 / _UPVALUE1_, _UPVALUE0_.y - 71 / _UPVALUE1_, _UPVALUE0_.w + 2 / _UPVALUE1_ + animations.posX / _UPVALUE1_, _UPVALUE0_.h + 2 / _UPVALUE1_, 15 / _UPVALUE1_, tocolor(255, 196, 0, animations.alpha255Bar), false)
  dxDrawRoundedRectangle(_UPVALUE0_.x, _UPVALUE0_.y - 70 / _UPVALUE1_, _UPVALUE0_.w + animations.posX / _UPVALUE1_, _UPVALUE0_.h, 15 / _UPVALUE1_, tocolor(35, 35, 35, animations.alpha255Bar), false)
  dxDrawImage(_UPVALUE0_.x - 17.5 / _UPVALUE1_, _UPVALUE0_.y - 82.5 / _UPVALUE1_, 105 / _UPVALUE1_, 105 / _UPVALUE1_, textures.user_icon, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
  if avatarIMG then
    dxDrawImage(_UPVALUE0_.x - 15 / _UPVALUE1_, _UPVALUE0_.y - 80 / _UPVALUE1_, 100 / _UPVALUE1_, 100 / _UPVALUE1_, avatarIMG, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
  end
  dxDrawImage(_UPVALUE0_.x - 20 / _UPVALUE1_, _UPVALUE0_.y - 85 / _UPVALUE1_, 110 / _UPVALUE1_, 110 / _UPVALUE1_, textures.user_icon1, 0, 0, 0, tocolor(255, 255, 255, animations.alpha255), false)
  dxDrawText("#919191[#fab000" .. id .. "#919191] " .. color_nickName .. "" .. nick, _UPVALUE0_.x + 100 / _UPVALUE1_, _UPVALUE0_.y - 180 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(0, 0, 0, animations.alpha255Text), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal17"), "left", "center", false, false, false, true, false)
  dxDrawText("#ffffff" .. text, _UPVALUE0_.x + 48 / _UPVALUE1_, _UPVALUE0_.y - 88 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(230, 230, 230, animations.alpha255Text), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("normal13"), "center", "center", false, false, false, true, false)
  dxDrawText("OG\197\129OSZENIE", _UPVALUE0_.x + 470 / _UPVALUE1_, _UPVALUE0_.y - 180 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, animations.alpha255Text), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font18"), "left", "center", false, false, false, true, false)
  if level == 1 then
    rank = "#00eaffSupport"
  elseif level == 11 then
    rank = "#00ff9eHelper"
  elseif level == 15 then
    rank = "#00b30fModerator"
  elseif level == 17 then
    rank = "#0077ffGlobal Moderator"
  elseif level == 2 then
    rank = "#a80000Administrator"
  elseif level == 25 then
    rank = "#801f4eAdministrator RCON"
  elseif level == 3 then
    rank = "#8426b8Developer"
  elseif level == 35 then
    rank = "#004099Project Manager"
  elseif level == 4 then
    rank = "#770000Owner"
  elseif isNitro == 1 then
    rank = "#b15bbdNitro Booster"
  elseif isPremium then
    rank = "#fab000Premium"
  end
  if rank then
    dxDrawText(rank, _UPVALUE0_.x + 115 / _UPVALUE1_, _UPVALUE0_.y - 130 / _UPVALUE1_, _UPVALUE0_.x + _UPVALUE0_.w, _UPVALUE0_.y + _UPVALUE0_.h, tocolor(255, 255, 255, animations.alpha255Text), 1 / _UPVALUE1_, exports.ST_gui:getGUIFont("font11"), "left", "center", false, false, false, true, false)
    dxDrawRectangle(_UPVALUE0_.x + 93 / _UPVALUE1_, _UPVALUE0_.y - 50 / _UPVALUE1_, 1 / _UPVALUE1_, 22 / _UPVALUE1_, tocolor(70, 70, 70, animations.alpha255Text), false)
    dxDrawRectangle(_UPVALUE0_.x + 93 / _UPVALUE1_, _UPVALUE0_.y - 28 / _UPVALUE1_, 15 / _UPVALUE1_, 1 / _UPVALUE1_, tocolor(70, 70, 70, animations.alpha255Text), false)
  end
end
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if _ARG_0_ == "show_ads" then
    if not getElementData(localPlayer, "player:sid") then
      return
    end
    if blockShowAds then
      return
    end
    if isEventHandlerAdded("onClientRender", root, ogloszenie) then
      return
    end
    if _ARG_1_ then
      text = _ARG_2_
      if standardAds then
        if getElementData(_ARG_1_, "player:elementDat") then
          color_nickName = getElementData(_ARG_1_, "player:elementDat").color_nickName
          id = getElementData(_ARG_1_, "id")
          nick = getPlayerName(_ARG_1_):gsub("#%x%x%x%x%x%x", "")
        else
          color_nickName = "#fab000"
          id = 0
          nick = getPlayerName(_ARG_1_):gsub("#%x%x%x%x%x%x", "")("B\197\130\196\133d")
        end
        outputChatBox("#ff7700OG\197\129OSZENIE #ffffff> #adadad[#fab000" .. id .. "#adadad] " .. color_nickName .. "" .. nick .. " - #c9c9c9" .. text .. "", 255, 255, 255, true)
      else
        if getElementData(_ARG_1_, "player:elementDat") then
          color_nickName = getElementData(_ARG_1_, "player:elementDat").color_nickName
          isNitro = getElementData(_ARG_1_, "player:elementDat").nitro_discord
          isPremium = getElementData(_ARG_1_, "player:premium")
          level = getElementData(_ARG_1_, "player:level")
          id = getElementData(_ARG_1_, "id")
          nick = getPlayerName(_ARG_1_):gsub("#%x%x%x%x%x%x", "")
        else
          color_nickName = "#fab000"
          isNitro = false
          isPremium = false
          level = false
          id = 0
          nick = getPlayerName(_ARG_1_):gsub("#%x%x%x%x%x%x", "")("B\197\130\196\133d")
        end
        if _ARG_3_ then
          hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
          maska = dxCreateTexture(":ST_avatars/kolo.png")
          dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
          shader = dxCreateShader(":ST_avatars/masked.fx")
          avatars = dxCreateTexture(_ARG_3_, "argb", false, "clamp")
          dxSetShaderValue(shader, "sMaskTexture", maska)
          dxSetShaderValue(shader, "sPicTexture", avatars)
          avatarIMG = shader
        end
        addEventHandler("onClientRender", root, ogloszenie)
        createAnimation(0, 255, "InOutQuad", 500, function(_ARG_0_)
          animations.alpha255 = _ARG_0_
        end)
        createAnimation(0, 255, "InOutQuad", 700, function(_ARG_0_)
          animations.alpha255Bar = _ARG_0_
        end)
        setTimer(function()
          createAnimation(-560, -25, "InOutQuad", 1200, function(_ARG_0_)
            animations.posX = _ARG_0_
          end)
          setTimer(function()
            createAnimation(-0, 255, "InOutQuad", 1200, function(_ARG_0_)
              animations.alpha255Text = _ARG_0_
            end)
          end, 800, 1)
        end, 200, 1)
      end
    end
  elseif _ARG_0_ == "endAds" then
    if blockShowAds then
      return
    end
    createAnimation(255, 0, "InOutQuad", 400, function(_ARG_0_)
      animations.alpha255Text = _ARG_0_
    end)
    setTimer(function()
      createAnimation(255, 0, "InOutQuad", 500, function(_ARG_0_)
        animations.alpha255 = _ARG_0_
      end)
      createAnimation(255, 0, "InOutQuad", 200, function(_ARG_0_)
        animations.alpha255Bar = _ARG_0_
      end)
    end, 1200, 1)
    setTimer(function()
      createAnimation(-25, -560, "InOutQuad", 1200, function(_ARG_0_)
        animations.posX = _ARG_0_
      end)
    end, 300, 1)
    setTimer(function()
      removeEventHandler("onClientRender", root, ogloszenie)
      text = false
      id = false
      nick = false
      if isElement(shader) then
        destroyElement(shader)
      end
      if isElement(avatars) then
        destroyElement(avatars)
      end
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      if isElement(avatarIMG) then
        destroyElement(avatarIMG)
      end
      avatarIMG = nil
    end, 2000, 1)
  elseif _ARG_0_ == "tableAds" then
    outputChatBox(" ", 255, 255, 255, true)
    outputChatBox("Ilo\197\155\196\135 og\197\130osze\197\132 w kolejce: #ffb300" .. #_ARG_1_ .. "", 245, 245, 245, true)
    for _FORV_8_, _FORV_9_ in pairs(_ARG_1_) do
      if getPlayerName(_FORV_9_[1]) then
        outputChatBox("#ffb300" .. _FORV_8_ .. "#e3e3e3. #adadad[#fab000" .. getElementData(_FORV_9_[1], "id") .. "#adadad] #e3e3e3" .. getPlayerName(_FORV_9_[1]) .. " - #c9c9c9" .. _FORV_9_[2] .. "", 255, 255, 255, true)
      end
    end
    outputChatBox(" ", 255, 255, 255, true)
  elseif _ARG_0_ == "showInfoClient" then
    for _FORV_8_, _FORV_9_ in ipairs(_ARG_1_) do
      onOffAds(_FORV_9_.settings_ads)
      switchAds(_FORV_9_.settings_normalAds)
    end
  end
end)
addEventHandler("onClientResourceStart", resourceRoot, function(_ARG_0_)
  triggerServerEvent("ev", resourceRoot, "showInfo", localPlayer)
end)
function ogloszeniaKom(_ARG_0_)
  if getTickCount() - _UPVALUE0_ > 5000 then
    triggerServerEvent("ev", resourceRoot, "showTable", localPlayer)
    _UPVALUE0_ = getTickCount()
  else
    return
  end
end
addCommandHandler("ogloszenia", ogloszeniaKom)
function switchAds(_ARG_0_)
  if _ARG_0_ == 1 then
    standardAds = true
  else
    standardAds = false
  end
end
function onOffAds(_ARG_0_)
  if _ARG_0_ == 1 then
    blockShowAds = true
    if isEventHandlerAdded("onClientRender", root, ogloszenie) then
      removeEventHandler("onClientRender", root, ogloszenie)
      text = false
      id = false
      nick = false
      if isElement(shader) then
        destroyElement(shader)
      end
      if isElement(avatars) then
        destroyElement(avatars)
      end
      if isElement(hudMaskShader) then
        destroyElement(hudMaskShader)
      end
      if isElement(maska) then
        destroyElement(maska)
      end
      if isElement(avatarIMG) then
        destroyElement(avatarIMG)
      end
      avatarIMG = nil
    end
  else
    blockShowAds = false
  end
end
function dxDrawRoundedRectangle(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 180, 270, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 90, 180, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_4_, 0, 90, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawCircle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, 270, 360, _ARG_5_, _ARG_5_, 16, 1)
  dxDrawRectangle(_ARG_0_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_ + _ARG_3_ - _ARG_4_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_2_ - _ARG_4_, _ARG_1_ + _ARG_4_, _ARG_4_, _ARG_3_ - _ARG_4_ * 2, _ARG_5_)
  dxDrawRectangle(_ARG_0_ + _ARG_4_, _ARG_1_, _ARG_2_ - _ARG_4_ * 2, _ARG_4_, _ARG_5_)
end
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
getResourceName(getThisResource(), true, 569899794)
return
