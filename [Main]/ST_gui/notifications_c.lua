NOTIFICATION_TIME = 6000
NOTIFICATION_LIMIT = 4
NOTIFICATION_CATEGORIES = {
  info = {
    66,
    134,
    244
  },
  error = {
    255,
    61,
    61
  },
  success = {
    3,
    216,
    0
  },
  troll = {
    255,
    255,
    255
  },
  message = {
    255,
    170,
    0
  },
  premium = {
    252,
    219,
    3
  },
  money = {
    57,
    196,
    78
  }
}
notification_name = {
  info = "#4286f4INFORMACJA",
  error = "#ff3d3dNIEPOWODZENIE",
  success = "#03d800SUKCES",
  troll = "TROLL",
  message = "#ffaa00SANTORI MESSAGE",
  premium = "#fcdb03PREMIUM",
  money = "#39c44eWYNAGRODZENIE"
}
screenW, screenH = guiGetScreenSize()
zoom = exports.st_gui:getInterfaceZoom()
notificationPos = {
  x = screenW,
  y = 0,
  w = 552 / zoom,
  h = 92 / zoom
}
notificationPos.x = notificationPos.x - notificationPos.w - 25 / zoom
addY = 190 / zoom
function addNotification(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if type(_ARG_0_) == "string" and NOTIFICATION_CATEGORIES[_ARG_1_] then
    if _UPVALUE0_ + 1 > NOTIFICATION_LIMIT then
      for _FORV_8_, _FORV_9_ in ipairs(_UPVALUE1_) do
        if not _FORV_9_.hidden then
          _FORV_9_.hidden = true
          break
        end
      end
    end
    outputConsole(" ")
    outputConsole("" .. _ARG_0_ .. "")
    outputConsole(" ")
    if _ARG_4_ then
      _ARG_4_ = dxCreateTexture(_ARG_4_)
    else
      _ARG_4_ = _UPVALUE2_[_ARG_1_ .. "_icon"]
    end
    if true and _ARG_1_ then
      snd = playSound("sounds/" .. tostring(_ARG_1_) .. ".wav")
      setSoundVolume(snd, 0.1)
    end
    if not tonumber(_ARG_2_) then
      if _ARG_2_ then
      else
        _ARG_2_ = notification_name[_ARG_1_]
      end
    else
      _ARG_2_ = notification_name[_ARG_1_]
    end
    table.insert(_UPVALUE1_, {
      text = _ARG_0_,
      text2 = _ARG_2_,
      category = _ARG_1_,
      offsetX = notificationPos.w * 2,
      offsetY = 25,
      posX = 0,
      icon = _ARG_4_,
      alpha = 0
    })
    if 1 < #_UPVALUE1_ then
      for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE1_) do
        if _FORV_10_.offsetY_anim then
          finishAnimation(_FORV_10_.offsetY_anim)
        end
      end
      for _FORV_9_, _FORV_10_ in ipairs(_UPVALUE1_) do
        if _FORV_9_ < #_UPVALUE1_ then
          _FORV_10_.offsetY_anim = createAnimation(0, notificationPos.h + 30 / zoom, "InOutQuad", 300, function(_ARG_0_)
            _UPVALUE0_[_UPVALUE1_].offsetY = _UPVALUE2_ + _ARG_0_
          end)
        end
      end
    end
    createAnimation(notificationPos.w * 2, 0, "InOutQuad", 500, function(_ARG_0_)
      _UPVALUE0_[_UPVALUE1_].offsetX = _ARG_0_
    end)
    createAnimation(math.floor(537 / zoom), 0, "InOutQuad", _ARG_3_ or 6000, function(_ARG_0_)
      _UPVALUE0_[_UPVALUE1_].posX = _ARG_0_
    end)
    createAnimation(0, 255, "InOutQuad", 1000, function(_ARG_0_)
      _UPVALUE0_[_UPVALUE1_].alpha = _ARG_0_
    end)
    setTimer(deleteNotification, _ARG_3_ or 6000, 1, #_UPVALUE1_)
    return #_UPVALUE1_
  end
end
addEvent("onClientAddNotification", true)
addEventHandler("onClientAddNotification", resourceRoot, addNotification)
function deleteNotification(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] and not _UPVALUE0_[_ARG_0_].hiding and not _UPVALUE0_[_ARG_0_].hidden then
    _UPVALUE0_[_ARG_0_].hiding = true
    createAnimation(0, notificationPos.w * 2, "InOutQuad", 1000, function(_ARG_0_)
      if not _UPVALUE0_ then
        return
      end
      if _ARG_0_ then
        if _UPVALUE1_[_UPVALUE0_] then
          _UPVALUE1_[_UPVALUE0_].offsetX = _ARG_0_
        else
          print("ta")
          _UPVALUE1_ = {}
        end
      end
    end)
    createAnimation(255, 0, "InOutQuad", 1000, function(_ARG_0_)
      if not _UPVALUE0_[_UPVALUE1_].alpha or _ARG_0_ then
        return
      end
      _UPVALUE0_[_UPVALUE1_].alpha = _ARG_0_
    end, function()
      _UPVALUE0_[_UPVALUE1_].hidden = true
      if _UPVALUE0_[_UPVALUE1_].icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.info_icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.money_icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.message_icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.error_icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.success_icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.premium_icon and _UPVALUE0_[_UPVALUE1_].icon ~= _UPVALUE2_.troll_icon then
        destroyElement(_UPVALUE0_[_UPVALUE1_].icon)
      end
    end)
  end
end
function showPlayerNotification(...)
  return addNotification(...)
end
addEventHandler("onClientRender", root, function()
  _UPVALUE0_ = 0
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE1_) do
    if _FORV_5_.hidden then
    else
      _UPVALUE0_ = _UPVALUE0_ + 1
      dxDrawImage(notificationPos.x + _FORV_5_.offsetX, notificationPos.y + _FORV_5_.offsetY + addY, notificationPos.w, notificationPos.h, _UPVALUE2_.background, 0, 0, 0, tocolor(255, 255, 255, _FORV_5_.alpha), true)
      if _FORV_5_.category ~= "message" then
        dxDrawImage(notificationPos.x + _FORV_5_.offsetX - 25 / zoom, notificationPos.y + _FORV_5_.offsetY - 15 / zoom + addY, 60 / zoom, 60 / zoom, _UPVALUE2_.circle, 0, 0, 0, tocolor(NOTIFICATION_CATEGORIES[_FORV_5_.category][1], NOTIFICATION_CATEGORIES[_FORV_5_.category][2], NOTIFICATION_CATEGORIES[_FORV_5_.category][3], 255), true)
      end
      dxDrawRectangle(notificationPos.x + 7 / zoom + _FORV_5_.offsetX, notificationPos.y + _FORV_5_.offsetY + 0.5 / zoom + addY, _FORV_5_.posX, notificationPos.h - 90.5 / zoom, tocolor(NOTIFICATION_CATEGORIES[_FORV_5_.category][1], NOTIFICATION_CATEGORIES[_FORV_5_.category][2], NOTIFICATION_CATEGORIES[_FORV_5_.category][3], 255), true)
      dxDrawText(_FORV_5_.text, notificationPos.x + _FORV_5_.offsetX + notificationPos.w * 0.2 + 35 / zoom, notificationPos.y + _FORV_5_.offsetY + addY * 2, notificationPos.x + _FORV_5_.offsetX + notificationPos.w * 0.2 + notificationPos.w * 0.75 + 5 / zoom, notificationPos.y + _FORV_5_.offsetY + (notificationPos.y + notificationPos.h), tocolor(255, 255, 255, _FORV_5_.alpha), 1 / zoom, exports.st_gui:getGUIFont("normal14"), "right", "center", false, true, true)
      dxDrawText(_FORV_5_.text2, notificationPos.x + _FORV_5_.offsetX + notificationPos.w * 0.2 - 70 / zoom, notificationPos.y + _FORV_5_.offsetY - 50 / zoom + addY * 2, notificationPos.x + _FORV_5_.offsetX + notificationPos.w * 0.2 + notificationPos.w * 0.75, notificationPos.y + _FORV_5_.offsetY + (notificationPos.y + notificationPos.h), tocolor(255, 255, 255, _FORV_5_.alpha), 1 / zoom, exports.st_gui:getGUIFont("bold16"), "left", "center", false, false, true, true)
      if _FORV_5_.icon then
        dxDrawImage(notificationPos.x + _FORV_5_.offsetX - 25 / zoom, notificationPos.y + _FORV_5_.offsetY - 15 / zoom + addY, 60 / zoom, 60 / zoom, _FORV_5_.icon, 0, 0, 0, tocolor(255, 255, 255, _FORV_5_.alpha), true)
      end
    end
  end
  if 0 + 1 == #_UPVALUE1_ then
    _UPVALUE1_ = {}
  end
end)
addEventHandler("onClientResourceStart", resourceRoot, function()
  _UPVALUE0_.background = dxCreateTexture("img/notifications/background.png")
  _UPVALUE0_.info_icon = dxCreateTexture("img/notifications/info_icon.png")
  _UPVALUE0_.error_icon = dxCreateTexture("img/notifications/error_icon.png")
  _UPVALUE0_.success_icon = dxCreateTexture("img/notifications/success_icon.png")
  _UPVALUE0_.troll_icon = dxCreateTexture("img/notifications/troll_icon.png")
  _UPVALUE0_.message_icon = dxCreateTexture("img/notifications/message_icon.png")
  _UPVALUE0_.premium_icon = dxCreateTexture("img/notifications/premium_icon.png")
  _UPVALUE0_.money_icon = dxCreateTexture("img/notifications/money_icon.png")
  _UPVALUE0_.circle = dxCreateTexture("img/notifications/circle.png")
end)
function setPosNoti(_ARG_0_)
  if _ARG_0_ == 1 then
    addY = 0
  else
    addY = 190 / zoom
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
getResourceName(getThisResource(), true, 874070706)
return
