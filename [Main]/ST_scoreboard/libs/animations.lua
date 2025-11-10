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
  _UPVALUE3_ = _UPVALUE3_ + 1
  table.insert(_UPVALUE0_, {
    id = _UPVALUE3_,
    from = _ARG_0_,
    to = _ARG_1_,
    easing = _ARG_2_,
    duration = _ARG_3_,
    start = getTickCount(),
    onChange = _ARG_4_,
    onEnd = _ARG_5_
  })
  return _UPVALUE3_
end
function finishAnimation(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if _FORV_5_.id == _ARG_0_ then
      _FORV_5_.onChange(_FORV_5_.to)
      if _FORV_5_.onEnd then
        _FORV_5_.onEnd()
      end
      _FORV_5_.start = 0
      return true
    end
  end
end
function deleteAnimation(_ARG_0_)
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if _FORV_5_.id == _ARG_0_ then
      table.remove(_UPVALUE0_, _FORV_4_)
      break
    end
  end
end
getResourceName(getThisResource(), true, 939234507)
return
