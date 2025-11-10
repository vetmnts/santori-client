avatar_table = {}
info_users = {}
vehicle_table = {}
shader = {}
avatars = {}
penalty_table = {}
invetory_table = {}
script_table = {}
script_table1 = {}
wheelsName = {
  {
    0,
    "#c8c8c8Standardowe"
  },
  {
    1,
    "#ffbb00ultra-cienkie"
  },
  {
    2,
    "#ffbb00cienkie"
  },
  {
    4,
    "#ffbb00szerokie"
  },
  {
    8,
    "#ffbb00ultra-szerokie"
  }
}
lastTickCount = getTickCount()
addEvent("evc", true)
addEventHandler("evc", resourceRoot, function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_, _ARG_8_, _ARG_9_, _ARG_10_, _ARG_11_)
  if _ARG_0_ == "showAdminsClient" then
    admins_table = {}
    admins_table = _ARG_1_
    if _ARG_2_ and _ARG_4_ and _ARG_3_ then
      table.insert(lastOnline_table, {
        _ARG_4_,
        _ARG_2_,
        _ARG_3_
      })
    end
    if _ARG_2_ == "cofnij" then
      windows.selectCategory = "ADMINISTRACJA"
    end
  elseif _ARG_0_ == "downloadAvatarAdmins" then
    shader[_ARG_2_] = dxCreateShader(":ST_avatars/masked.fx")
    avatars[_ARG_2_] = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
    dxSetShaderValue(shader[_ARG_2_], "sMaskTexture", maska)
    dxSetShaderValue(shader[_ARG_2_], "sPicTexture", avatars[_ARG_2_])
    table.insert(avatar_table, {
      _ARG_2_,
      shader[_ARG_2_]
    })
  elseif _ARG_0_ == "searchPlayerClient" then
    info_users = _ARG_1_
    exports.ST_gui:destroyCustomEditbox("search")
    moneyPlayer = _ARG_2_
    windows.selectCategory = "INFORMACJE O GRACZU"
    karyPlayer = _ARG_3_
    organizationName = _ARG_4_
  elseif _ARG_0_ == "downloadAvatarPlayer" then
    if not isElement(maska) then
      hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
      maska = dxCreateTexture(":ST_avatars/kolo.png")
      dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
    end
    shader1 = dxCreateShader(":ST_avatars/masked.fx")
    avatars2 = dxCreateTexture(_ARG_1_, "argb", false, "clamp")
    dxSetShaderValue(shader1, "sMaskTexture", maska)
    dxSetShaderValue(shader1, "sPicTexture", avatars2)
    avatarPlayer = shader1
  elseif _ARG_0_ == "showVehiclesUsersClient" then
    vehicle_table = _ARG_1_
  elseif _ARG_0_ == "searchVehicleClient" then
    vehicle_table = _ARG_1_
    windows.selectCategory = "INFORMACJE O POJE\197\185DZIE"
    exports.ST_gui:destroyCustomEditbox("search")
    for _FORV_15_, _FORV_16_ in ipairs(_ARG_1_) do
      vehicles3D(_FORV_16_.model, _FORV_16_.wariant, _FORV_16_.color, _FORV_16_.tuning, _FORV_16_.custom_model)
    end
  elseif _ARG_0_ == "tablePenaltyListClient" then
    penalty_table = _ARG_1_
  elseif _ARG_0_ == "showInvetoryClient" then
    invetory_table = _ARG_1_
  elseif _ARG_0_ == "admin_rendering" then
    xtext = _ARG_1_
    if isEventHandlerAdded("onClientRender", root, renderingInfo) then
      removeEventHandler("onClientRender", root, renderingInfo)
    end
    createAnimation(100, 0, "InOutQuad", 400, function(_ARG_0_)
      animations.progressBackground = _ARG_0_
    end)
    addEventHandler("onClientRender", root, renderingInfo)
    setTimer(function()
      createAnimation(0, 100, "InOutQuad", 400, function(_ARG_0_)
        animations.progressBackground = _ARG_0_
      end)
    end, 4600, 1)
    setTimer(function()
      removeEventHandler("onClientRender", root, renderingInfo)
    end, 5000, 1)
  elseif _ARG_0_ == "showHistoryAdmClient" then
    historyAdm_table = _ARG_1_
    getRealTimeTak = _ARG_2_
  elseif _ARG_0_ == "pokazPrezentyClient" then
    prezenty_table = _ARG_1_
    getRealTimeTak = _ARG_2_
  elseif _ARG_0_ == "pokazSkryptyClient" then
    script_table_base = _ARG_1_
    script_table = _ARG_1_
  end
end)
bindKey("f6", "down", function()
  if windows.background == false then
    if getTickCount() - lastTickCount > 4000 then
      textures = {
        background = dxCreateTexture(":ST_gui/img/background2.png"),
        user_icon = dxCreateTexture(":ST_dashboard/img/user_icon.png"),
        info_icon = dxCreateTexture(":ST_mechanic_business/img/info_icon.png"),
        cross = dxCreateTexture(":ST_gui/img/cross.png"),
        usersAdm_icon = dxCreateTexture(":ST_mechanic_business/img/clients_icon.png"),
        search_icon = dxCreateTexture("img/search_icon.png"),
        vehicle_icon = dxCreateTexture(":ST_dashboard/img/vehicle_icon.png"),
        back = dxCreateTexture(":ST_dashboard/img/back_arrow.png"),
        strzalka = dxCreateTexture(":ST_selling_drugs/img/strzalka.png"),
        gift_icon = dxCreateTexture(":ST_dashboard/img/gift_icon.png"),
        organization_icon = dxCreateTexture(":ST_organization_panel/img/organization_icon.png"),
        script_icon = dxCreateTexture("img/script_icon.png")
      }
      if getElementData(localPlayer, "player:level") then
        category = {
          {
            text = "ADMINISTRACJA",
            img = textures.usersAdm_icon
          },
          {
            text = "WYSZUKAJ GRACZA",
            img = textures.search_icon
          },
          {
            text = "WYSZUKAJ POJAZD",
            img = textures.vehicle_icon
          },
          {
            text = "WYSZUKAJ ORG",
            img = textures.organization_icon
          },
          {
            text = "PREZENTY",
            img = textures.gift_icon
          },
          {
            text = "SKRYPTY",
            img = textures.script_icon
          }
        }
      else
        category = {
          {
            text = "ADMINISTRACJA",
            img = textures.usersAdm_icon
          }
        }
      end
      k = 1
      n = 4
      m = 4
      admins_table = {}
      prezenty_table = {}
      if not refreshAvatarsFriend then
        for _FORV_3_, _FORV_4_ in pairs(avatar_table) do
          if isElement(_FORV_4_[2]) then
            destroyElement(_FORV_4_[2])
          end
        end
        avatar_table = {}
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "showAdmins", localPlayer, true)
        hudMaskShader = dxCreateShader(":ST_avatars/masked.fx")
        maska = dxCreateTexture(":ST_avatars/kolo.png")
        dxSetShaderValue(hudMaskShader, "sMaskTexture", maska)
        setTimer(function()
          for _FORV_3_, _FORV_4_ in pairs(avatar_table) do
            if isElement(_FORV_4_[2]) then
              destroyElement(_FORV_4_[2])
            end
            if isElement(shader[_FORV_4_[1]]) then
              destroyElement(shader[_FORV_4_[1]])
            end
            if isElement(avatars[_FORV_4_[1]]) then
              destroyElement(avatars[_FORV_4_[1]])
            end
          end
          if isElement(hudMaskShader) then
            destroyElement(hudMaskShader)
          end
          if isElement(maska) then
            destroyElement(maska)
          end
          avatar_table = {}
          refreshAvatarsFriend = false
        end, 500000, 1)
      else
        triggerServerEvent("evEwenciks_fhasdfhtrd", resourceRoot, "showAdmins", localPlayer)
      end
      refreshAvatarsFriend = true
      lastOnline_table = {}
      addEventHandler("onClientRender", root, window)
      addEventHandler("onClientClick", root, click)
      addEventHandler("onClientKey", root, key)
      showCursor(true)
      windows.background = true
      windows.selectCategory = "ADMINISTRACJA"
      exports.ST_gui:destroyCustomEditbox("addAdmins")
      if getElementData(localPlayer, "player:level") then
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
      end
      lastTickCount = getTickCount()
    end
  else
    last_table = false
    if isElement(shader1) then
      destroyElement(shader1)
    end
    if isElement(avatars1) then
      destroyElement(avatars1)
    end
    if isElement(myObject) then
      exports.ST_object_preview:destroyObjectPreview(myObject)
    end
    if isElement(vehicle3D) then
      destroyElement(vehicle3D)
    end
    category = {}
    exports.ST_gui:destroyCustomEditbox("customDateHistory")
    exports.ST_gui:destroyCustomEditbox("search")
    exports.ST_gui:destroyCustomEditbox("addAdmins")
    exports.ST_gui:destroyCustomEditbox("searchScript")
    removeEventHandler("onClientRender", root, window)
    removeEventHandler("onClientClick", root, click)
    removeEventHandler("onClientKey", root, key)
    showCursor(false)
    windows.addHistoryAdm = false
    windows.background = false
    windows.selectCategory = false
    for _FORV_3_, _FORV_4_ in pairs(textures) do
      if isElement(_FORV_4_) then
        destroyElement(_FORV_4_)
      end
    end
    textures = {}
  end
end)
function isMouseIn(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  if not isCursorShowing() then
    return false
  end
  if _ARG_0_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_0_ + _ARG_2_ and _ARG_1_ <= getCursorPosition() * guiGetScreenSize() and getCursorPosition() * guiGetScreenSize() <= _ARG_1_ + _ARG_3_ then
    return true
  else
    return false
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
function dateName(_ARG_0_)
  if string.sub(_ARG_0_, 1, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 10) then
    return "dzi\197\155 o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 1, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "wczoraj o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 2, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "2 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 3, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "3 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 4, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "4 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  elseif string.sub(_ARG_0_, 1, 7) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday, getRealTime().hour, getRealTime().minute, getRealTime().second), 1, 7) and string.sub(_ARG_0_, 9, 10) == string.sub(string.format("%04d-%02d-%02d %02d:%02d:%02d", getRealTime().year + 1900, getRealTime().month + 1, getRealTime().monthday - 5, getRealTime().hour, getRealTime().minute, getRealTime().second), 9, 10) then
    return "5 dni temu o " .. string.sub(_ARG_0_, 12, 16) .. ""
  else
    return "" .. string.sub(_ARG_0_, 1, 10) .. ""
  end
end
function przecinek(_ARG_0_)
  return string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$") .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$"):reverse():gsub("(%d%d%d)", "%1,"):reverse() .. string.match(_ARG_0_, "^([^%d]*%d)(%d*)(.-)$")
end
function secondsToClock(_ARG_0_)
  _ARG_0_ = _ARG_0_ or 0
  if _ARG_0_ <= 0 then
    return "00 godzin 00 minut"
  else
    hours = string.format("%02.f", math.floor(_ARG_0_ / 3600))
    mins = string.format("%02.f", math.floor(_ARG_0_ / 60 - hours * 60))
    secs = string.format("%02.f", math.floor(_ARG_0_ - hours * 3600 - mins * 60))
    return "#fcba03" .. hours .. "#ffffff godzin #fcba03" .. mins .. "#ffffff minut"
  end
end
function vehicles3D(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if isElement(myObject) then
    exports.ST_object_preview:destroyObjectPreview(myObject)
  end
  if isElement(vehicle3D) then
    destroyElement(vehicle3D)
  end
  vehicle3D = createVehicle(_ARG_0_, 0, 0, 50)
  if _ARG_4_ ~= 0 and exports.ST_custom_cars:isCustomModID(_ARG_4_) then
    setElementData(vehicle3D, "vehicle:customID", _ARG_4_)
  end
  setElementCollisionsEnabled(vehicle3D, false)
  myObject = exports.ST_object_preview:createObjectPreview(vehicle3D, -5, 0, 140, windowPos.x + 816 / zoom, windowPos.y + 77 / zoom, 473 / zoom, 360 / zoom, false, true)
  setVehicleColor(vehicle3D, split(_ARG_2_, ",")[1], split(_ARG_2_, ",")[2], split(_ARG_2_, ",")[3], split(_ARG_2_, ",")[4], split(_ARG_2_, ",")[5], split(_ARG_2_, ",")[6], split(_ARG_2_, ",")[7], split(_ARG_2_, ",")[8], split(_ARG_2_, ",")[9], split(_ARG_2_, ",")[10], split(_ARG_2_, ",")[11], split(_ARG_2_, ",")[12])
  for _FORV_9_, _FORV_10_ in ipairs(split(_ARG_3_, ",")) do
    addVehicleUpgrade(vehicle3D, _FORV_10_)
  end
  setVehicleVariant(vehicle3D, split(_ARG_1_, ",")[1], split(_ARG_1_, ",")[2])
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
getResourceName(getThisResource(), true, 81752911)
return
