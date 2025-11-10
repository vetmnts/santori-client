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
function startPaste()
  _UPVALUE0_ = guiCreateEdit(3000, 3000, 200, 200, "", false, false)
  guiBringToFront(_UPVALUE0_)
  removeEventHandler("onClientRender", root, paste_render)
  removeEventHandler("onClientKey", root, paste_key)
  addEventHandler("onClientRender", root, paste_render)
  addEventHandler("onClientKey", root, paste_key)
end
function paste_render()
  if (getKeyState("lctrl") or getKeyState("rctrl")) and getKeyState("v") then
    setSelectedEditBoxTextImportant(guiGetText(_UPVALUE0_) or "")
  end
end
function paste_key()
  if press and (getKeyState("lctrl") or getKeyState("rctrl")) and (getKeyState("c") or getKeyState("a")) then
    cancelEvent()
  end
end
function stopPaste()
  if _UPVALUE0_ and isElement(_UPVALUE0_) then
    destroyElement(_UPVALUE0_)
  end
  removeEventHandler("onClientRender", root, paste_render)
  removeEventHandler("onClientKey", root, paste_key)
end
getResourceName(getThisResource(), true, 824677501)
return
