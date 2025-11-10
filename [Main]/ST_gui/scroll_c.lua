function createScroll(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_)
  if _ARG_0_ and _ARG_1_ and _ARG_2_ and _ARG_3_ and _ARG_4_ then
    table.insert(_UPVALUE0_, {
      x = _ARG_0_,
      y = _ARG_1_,
      w = _ARG_2_,
      h = _ARG_3_,
      gripSize = _ARG_5_,
      textures = _ARG_4_,
      gripPosition = _ARG_1_ + _ARG_5_ * 0.4,
      color = _ARG_6_,
      color2 = _ARG_7_
    })
    return #_UPVALUE0_
  end
end
function destroyScroll(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] then
    if _ARG_0_ == _UPVALUE1_ then
      _UPVALUE1_ = false
    end
    table.remove(_UPVALUE0_, _ARG_0_)
  end
end
function getScrollProgress(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] then
    return (_UPVALUE0_[_ARG_0_].gripPosition - _UPVALUE0_[_ARG_0_].y) / (_UPVALUE0_[_ARG_0_].h - _UPVALUE0_[_ARG_0_].gripSize)
  end
end
function setScrollProgress(_ARG_0_, _ARG_1_)
  if _UPVALUE0_[_ARG_0_] then
    _UPVALUE0_[_ARG_0_].gripPosition = _UPVALUE0_[_ARG_0_].y + (_UPVALUE0_[_ARG_0_].h - _UPVALUE0_[_ARG_0_].y) * _ARG_1_
  end
end
function moveScroll(_ARG_0_, _ARG_1_, _ARG_2_)
  if _UPVALUE0_[_ARG_0_] and _ARG_1_ and _ARG_2_ then
    if _ARG_1_ == "up" then
      _UPVALUE0_[_ARG_0_].gripPosition = _UPVALUE0_[_ARG_0_].gripPosition - _ARG_2_
    elseif _ARG_1_ == "down" then
      _UPVALUE0_[_ARG_0_].gripPosition = _UPVALUE0_[_ARG_0_].gripPosition + _ARG_2_
    end
    _UPVALUE0_[_ARG_0_].gripPosition = math.max(_UPVALUE0_[_ARG_0_].gripPosition, _UPVALUE0_[_ARG_0_].y + _UPVALUE0_[_ARG_0_].gripSize * 0.25)
    _UPVALUE0_[_ARG_0_].gripPosition = math.min(_UPVALUE0_[_ARG_0_].gripPosition, _UPVALUE0_[_ARG_0_].y + _UPVALUE0_[_ARG_0_].h - _UPVALUE0_[_ARG_0_].gripSize * 1.4)
  end
end
function resetScroll(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] then
    _UPVALUE1_ = false
    _UPVALUE0_[_ARG_0_].gripPosition = _UPVALUE0_[_ARG_0_].y
  end
end
function renderScroll(_ARG_0_)
  if _UPVALUE0_[_ARG_0_] then
    if _UPVALUE1_[1] == 0 and _UPVALUE1_[2] == 0 then
      _UPVALUE1_ = {
        getCursorPosition() * SW,
        getCursorPosition() * SH
      }
    end
    dxDrawImage(_UPVALUE0_[_ARG_0_].x, _UPVALUE0_[_ARG_0_].y, _UPVALUE0_[_ARG_0_].w, _UPVALUE0_[_ARG_0_].h, _UPVALUE0_[_ARG_0_].textures.background, 0, 0, 0, tocolor(_UPVALUE0_[_ARG_0_].color[1], _UPVALUE0_[_ARG_0_].color[2], _UPVALUE0_[_ARG_0_].color[3], 255))
    dxDrawImage(_UPVALUE0_[_ARG_0_].x + _UPVALUE0_[_ARG_0_].w / 2 - _UPVALUE0_[_ARG_0_].gripSize / 2, _UPVALUE0_[_ARG_0_].gripPosition, _UPVALUE0_[_ARG_0_].gripSize, _UPVALUE0_[_ARG_0_].gripSize, _UPVALUE0_[_ARG_0_].textures.grip, 0, 0, 0, tocolor(_UPVALUE0_[_ARG_0_].color2[1], _UPVALUE0_[_ARG_0_].color2[2], _UPVALUE0_[_ARG_0_].color2[3], 255))
    if _UPVALUE2_ == _ARG_0_ then
      _UPVALUE1_ = {
        getCursorPosition() * SW,
        getCursorPosition() * SH
      }
      _UPVALUE0_[_ARG_0_].gripPosition = _UPVALUE0_[_ARG_0_].gripPosition + (getCursorPosition() * SH - _UPVALUE1_[2])
      _UPVALUE0_[_ARG_0_].gripPosition = math.max(_UPVALUE0_[_ARG_0_].gripPosition, _UPVALUE0_[_ARG_0_].y + _UPVALUE0_[_ARG_0_].gripSize * 0.25)
      _UPVALUE0_[_ARG_0_].gripPosition = math.min(_UPVALUE0_[_ARG_0_].gripPosition, _UPVALUE0_[_ARG_0_].y + _UPVALUE0_[_ARG_0_].h - _UPVALUE0_[_ARG_0_].gripSize * 1.4)
    end
  end
end
function onClientClickScroll(_ARG_0_, _ARG_1_)
  if _ARG_0_ == "mouse1" and _ARG_1_ then
    if 0 < #_UPVALUE0_ then
      for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE0_) do
        if isCursorOnElement(_FORV_6_.x, _FORV_6_.y, _FORV_6_.w, _FORV_6_.h) then
          _UPVALUE1_ = _FORV_5_
          _FORV_6_.gripPosition = getCursorPosition() * SH - _FORV_6_.gripSize / 2
          _FORV_6_.gripPosition = math.max(_FORV_6_.gripPosition, _FORV_6_.y + _FORV_6_.gripSize * 0.25)
          _FORV_6_.gripPosition = math.min(_FORV_6_.gripPosition, _FORV_6_.y + _FORV_6_.h - _FORV_6_.gripSize * 1.4)
          _UPVALUE2_ = {
            getCursorPosition() * SW,
            getCursorPosition() * SH
          }
        end
      end
    end
  elseif _ARG_0_ == "mouse1" and not _ARG_1_ then
    _UPVALUE1_ = false
    _UPVALUE2_ = {0, 0}
  end
end
getResourceName(getThisResource(), true, 484788004)
return
