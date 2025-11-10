engineImportTXD(engineLoadTXD("f/file.txd", 14449), 14449)
engineReplaceModel(engineLoadDFF("f/file.dff", 14449), 14449)
engineReplaceCOL(engineLoadCOL("f/file.col"), 14449)
setOcclusionsEnabled(false)
addEventHandler("onClientPlayerDamage", localPlayer, function(_ARG_0_, _ARG_1_)
  if getPedContactElement(localPlayer) and getElementType((getPedContactElement(localPlayer))) == "object" and getElementModel((getPedContactElement(localPlayer))) == 14449 then
    cancelEvent()
  end
end)
getResourceName(getThisResource(), true, 200092096)
return
