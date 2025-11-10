function getCustomData(_ARG_0_, _ARG_1_, _ARG_2_)
  if (_ARG_2_ == "local" and _UPVALUE0_ or _ARG_2_ == "synced" and _UPVALUE1_ or _ARG_2_ == "private" and _UPVALUE2_ or {})[_ARG_0_] then
    return _ARG_1_ == nil and (_ARG_2_ == "local" and _UPVALUE0_ or _ARG_2_ == "synced" and _UPVALUE1_ or _ARG_2_ == "private" and _UPVALUE2_ or {})[_ARG_0_] or (_ARG_2_ == "local" and _UPVALUE0_ or _ARG_2_ == "synced" and _UPVALUE1_ or _ARG_2_ == "private" and _UPVALUE2_ or {})[_ARG_0_][_ARG_1_]
  end
  return nil
end
function getElementsByKey(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  for _FORV_10_, _FORV_11_ in pairs(_ARG_2_ == "local" and _UPVALUE0_ or _ARG_2_ == "synced" and _UPVALUE1_ or _ARG_2_ == "private" and _UPVALUE2_ or {}) do
    if getCustomData(_FORV_10_, _ARG_0_, _ARG_2_) then
      if _ARG_1_ and _ARG_1_ ~= getCustomData(_FORV_10_, _ARG_0_, _ARG_2_) then
        return false
      end
      if _ARG_3_ then
        (_ARG_3_ and {} or false)[#(_ARG_3_ and {} or false) + 1] = _FORV_10_
      else
        break
      end
    end
  end
  return _FORV_10_
end
function setCustomData(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if _ARG_3_ == "local" and _UPVALUE0_ or _ARG_3_ == "synced" and _UPVALUE1_ or _ARG_3_ == "private" and _UPVALUE2_ then
    if not (_ARG_3_ == "local" and _UPVALUE0_ or _ARG_3_ == "synced" and _UPVALUE1_ or _ARG_3_ == "private" and _UPVALUE2_)[_ARG_0_] then
      (_ARG_3_ == "local" and _UPVALUE0_ or _ARG_3_ == "synced" and _UPVALUE1_ or _ARG_3_ == "private" and _UPVALUE2_)[_ARG_0_] = {}
    end
    if _ARG_2_ ~= (_ARG_3_ == "local" and _UPVALUE0_ or _ARG_3_ == "synced" and _UPVALUE1_ or _ARG_3_ == "private" and _UPVALUE2_)[_ARG_0_][_ARG_1_] then
      (_ARG_3_ == "local" and _UPVALUE0_ or _ARG_3_ == "synced" and _UPVALUE1_ or _ARG_3_ == "private" and _UPVALUE2_)[_ARG_0_][_ARG_1_] = _ARG_2_
      handleDataChange(_ARG_0_, _ARG_1_, _ARG_3_, (_ARG_3_ == "local" and _UPVALUE0_ or _ARG_3_ == "synced" and _UPVALUE1_ or _ARG_3_ == "private" and _UPVALUE2_)[_ARG_0_][_ARG_1_], _ARG_2_, _ARG_4_, _ARG_5_)
      return true
    end
  end
  return false
end
function addDataHandler(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if (type(_ARG_0_) == "string" or type(_ARG_0_) == "table") and (type(_ARG_1_) == "string" or type(_ARG_1_) == "table") and (type(_ARG_2_) == "string" or type(_ARG_2_) == "table") and type(_ARG_3_) == "function" and (type(_ARG_4_) == "string" or type(_ARG_4_) == "table" or not _ARG_4_) then
    if type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table") then
      if type(_ARG_1_) == "table" then
        for _FORV_29_ = 1, type(_ARG_1_) == "table" and #_ARG_1_ or false do
          (type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table")) and {} or false[_ARG_1_[_FORV_29_]] = true
        end
      else
        (type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table")) and {} or false[_ARG_1_] = true
      end
    end
    if type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table") then
      if type(_ARG_2_) == "table" then
        for _FORV_29_ = 1, type(_ARG_2_) == "table" and #_ARG_2_ or false do
          (type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table")) and {} or false[_ARG_2_[_FORV_29_]] = true
        end
      else
        (type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table")) and {} or false[_ARG_2_] = true
      end
    end
    if type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table") then
      if type(_ARG_4_) == "table" then
        for _FORV_29_ = 1, type(_ARG_4_) == "table" and #_ARG_4_ or 0 do
          (type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")) and {} or false[_ARG_4_[_FORV_29_]] = true
        end
      else
        (type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")) and {} or false[_ARG_4_] = true
      end
    end
    if type(_ARG_0_) == "string" then
      if not _UPVALUE0_[_ARG_0_] then
        _UPVALUE0_[_ARG_0_] = {
          {
            (type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table")) and {} or false,
            (type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table")) and {} or false,
            (type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")) and {} or false,
            _ARG_3_,
            type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table"),
            type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table"),
            type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")
          }
        }
      else
        _UPVALUE0_[_ARG_0_][#_UPVALUE0_[_ARG_0_] + 1] = {
          (type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table")) and {} or false,
          (type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table")) and {} or false,
          (type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")) and {} or false,
          _ARG_3_,
          type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table"),
          type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table"),
          type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")
        }
      end
    else
      for _FORV_30_ = 1, #_ARG_0_ do
        if not _UPVALUE0_[_ARG_0_[_FORV_30_]] then
          _UPVALUE0_[_ARG_0_[_FORV_30_]] = {
            {
              (type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table")) and {} or false,
              (type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table")) and {} or false,
              (type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")) and {} or false,
              _ARG_3_,
              type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table"),
              type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table"),
              type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")
            }
          }
        else
          _UPVALUE0_[_ARG_0_[_FORV_30_]][#_UPVALUE0_[_ARG_0_[_FORV_30_]] + 1] = {
            (type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table")) and {} or false,
            (type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table")) and {} or false,
            (type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")) and {} or false,
            _ARG_3_,
            type(_ARG_1_) == "table" and (type(_ARG_1_) == "table" and #_ARG_1_ or false) > 0 or not (type(_ARG_1_) == "table"),
            type(_ARG_2_) == "table" and (type(_ARG_2_) == "table" and #_ARG_2_ or false) > 0 or not (type(_ARG_2_) == "table"),
            type(_ARG_4_) == "table" and 0 < (type(_ARG_4_) == "table" and #_ARG_4_ or 0) or not (type(_ARG_4_) == "table")
          }
        end
      end
    end
    return true
  end
  return false
end
function handleDataChange(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  if isElement(_ARG_0_) and _UPVALUE0_[getElementType(_ARG_0_)] then
    for _FORV_24_ = 1, #_UPVALUE0_[getElementType(_ARG_0_)] do
      if (_UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][5] and _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][1][_ARG_2_] or not _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][5] and true or false) and (_UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][6] and _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][2][_ARG_1_] or not _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][6] and true or false) and (_UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][7] and _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][3][_ARG_5_] or not _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][7] and true or false) then
        _UPVALUE0_[getElementType(_ARG_0_)][_FORV_24_][4](_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
      end
    end
  end
end
function onClientDataHandler(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_)
  print("onClientDataHandler got triggered at key: " .. _ARG_1_ .. " (" .. _ARG_2_ .. " data) - syncer element: " .. inspect(_ARG_6_))
end
addDataHandler("player", {}, {}, onClientDataHandler, "onClientKeyChanged")
function onClientDataSync(_ARG_0_)
  _UPVALUE0_ = _ARG_0_
end
addEvent("onClientDataSync", true)
addEventHandler("onClientDataSync", localPlayer, onClientDataSync)
function onClientReceiveData(...)
  if ({
    ...
  })[1] then
    for _FORV_14_ = 1, #({
      ...
    })[2] do
      setCustomData(({
        ...
      })[2][_FORV_14_][1], ({
        ...
      })[2][_FORV_14_][2], ({
        ...
      })[2][_FORV_14_][4], ({
        ...
      })[2][_FORV_14_][3], ({
        ...
      })[2][_FORV_14_][5], ({
        ...
      })[2][_FORV_14_][6])
    end
  else
    setCustomData(({
      ...
    })[2], ({
      ...
    })[3], ({
      ...
    })[5], ({
      ...
    })[4], ({
      ...
    })[6], ({
      ...
    })[7])
  end
end
addEvent("onClientReceiveData", true)
addEventHandler("onClientReceiveData", root, onClientReceiveData)
function onClientResourceStart()
  triggerServerEvent("onServerPlayerReady", localPlayer)
end
addEventHandler("onClientResourceStart", resourceRoot, onClientResourceStart)
function onClientElementQuitAndDestroy()
  _UPVALUE0_[source] = nil
  _UPVALUE1_[source] = nil
  _UPVALUE2_[source] = nil
end
addEventHandler("onClientPlayerQuit", getElementByID("playerElements"), onClientElementQuitAndDestroy)
addEventHandler("onClientElementDestroy", getElementByID("otherElements"), onClientElementQuitAndDestroy)
