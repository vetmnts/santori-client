SW, SH = guiGetScreenSize()
zoom = 1
if 2048 > SW then
  zoom = math.min(2.2, 2048 / SW)
end
function getInterfaceZoom()
  return zoom
end
function isCursorOnElement(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  cursorx, cursory = getCursorPosition() * SW, getCursorPosition() * SH
  return _ARG_0_ < cursorx and cursorx < _ARG_0_ + _ARG_2_ and _ARG_1_ < cursory and cursory < _ARG_1_ + _ARG_3_
end
function createAnimation(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_)
  if #_UPVALUE0_ == 0 and not _UPVALUE1_ then
    addEventHandler("onClientRender", root, _UPVALUE2_)
    _UPVALUE1_ = true
  end
  assert(type(_ARG_0_) == "number", "Bad argument @ 'createAnimation' [expected number at argument 1, got " .. type(_ARG_0_) .. "]")
  assert(type(_ARG_1_) == "number", "Bad argument @ 'createAnimation' [expected number at argument 2, got " .. type(_ARG_1_) .. "]")
  assert(type(_ARG_2_) == "string", "Bad argument @ 'createAnimation' [Invalid easing at argument 3]")
  assert(type(_ARG_3_) == "number", "Bad argument @ 'createAnimation' [expected number at argument 4, got " .. type(_ARG_3_) .. "]")
  assert(type(_ARG_4_) == "function", "Bad argument @ 'createAnimation' [expected function at argument 5, got " .. type(_ARG_4_) .. "]")
  table.insert(_UPVALUE0_, {
    from = _ARG_0_,
    to = _ARG_1_,
    easing = _ARG_2_,
    duration = _ARG_3_,
    start = getTickCount(),
    onChange = _ARG_4_,
    onEnd = _ARG_5_
  })
end
getResourceName(getThisResource(), true, 502369465)
return
