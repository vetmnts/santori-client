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
function deleteRotation()
  if isEventHandlerAdded("onClientPreRender", root, changeRotation) then
    removeEventHandler("onClientPreRender", root, changeRotation)
  end
end
addEvent("safd_stretcher:deleteRotation", true)
addEventHandler("safd_stretcher:deleteRotation", root, deleteRotation)
function changeRotation()
  if not _UPVALUE0_.player then
    deleteRotation()
  end
  if not _UPVALUE0_.object then
    deleteRotation()
  end
  if _UPVALUE0_.wozek then
    xZ = 180
  else
    xZ = 90
  end
  _UPVALUE0_.player.rotation = Vector3(({
    getElementRotation(_UPVALUE0_.object)
  })[1], ({
    getElementRotation(_UPVALUE0_.object)
  })[2], ({
    getElementRotation(_UPVALUE0_.object)
  })[3] + xZ)
end
addEvent("safd_stretcher:rotation", true)
addEventHandler("safd_stretcher:rotation", root, function(_ARG_0_, _ARG_1_, _ARG_2_)
  if _ARG_2_ then
    _UPVALUE0_.wozek = true
  else
    _UPVALUE0_.wozek = false
  end
  _UPVALUE0_.object = _ARG_1_
  _UPVALUE0_.player = _ARG_0_
  addEventHandler("onClientPreRender", root, changeRotation)
end)
getResourceName(getThisResource(), true, 568578230)
return
