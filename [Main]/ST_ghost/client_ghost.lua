Ghost = {}
function Ghost.enter(_ARG_0_)
  if _ARG_0_ and type(_ARG_0_) == "table" then
    for _FORV_4_, _FORV_5_ in pairs(_ARG_0_) do
      setElementCollidableWith(source, _FORV_5_, false)
      setElementCollidableWith(_FORV_5_, source, false)
    end
  end
end
addEvent("Ghost.enter", true)
addEventHandler("Ghost.enter", root, Ghost.enter)
function Ghost.leave(_ARG_0_)
  if _ARG_0_ and type(_ARG_0_) == "table" then
    for _FORV_4_, _FORV_5_ in pairs(_ARG_0_) do
      setElementCollidableWith(source, _FORV_5_, true)
      setElementCollidableWith(_FORV_5_, source, true)
    end
  end
end
addEvent("Ghost.leave", true)
addEventHandler("Ghost.leave", root, Ghost.leave)
getResourceName(getThisResource(), true, 51280824)
return
