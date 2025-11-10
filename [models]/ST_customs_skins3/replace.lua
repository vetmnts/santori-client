function loadCustomSkin(_ARG_0_)
  if not string.find(_ARG_0_, "^Skin_79_%d+$") or 15 < #_ARG_0_ then
    outputChatBox("Model nie jest dozwolony: " .. _ARG_0_, 255, 0, 0)
    return
  end
  if not fileExists(_ARG_0_ .. ".dff") or not fileExists(_ARG_0_ .. ".txd") then
    outputChatBox("Pliki modelu nie istniej\196\133: " .. _ARG_0_, 255, 0, 0)
    return
  end
  if not engineLoadDFF(_ARG_0_ .. ".dff") then
    outputChatBox("Nie uda\197\130o si\196\153 za\197\130adowa\196\135 DFF: " .. _ARG_0_, 255, 0, 0)
    return
  end
  if not engineLoadTXD(_ARG_0_ .. ".txd") then
    outputChatBox("Nie uda\197\130o si\196\153 za\197\130adowa\196\135 TXD: " .. _ARG_0_, 255, 0, 0)
    return
  end
  if getResourceFromName("ST_customs_skins") then
    exports.ST_customs_skins:replaceModel(_ARG_0_, 79, engineLoadDFF(_ARG_0_ .. ".dff"), (engineLoadTXD(_ARG_0_ .. ".txd")))
  else
    outputChatBox("Zas\195\179b ST_customs_skins nie jest uruchomiony.", 255, 0, 0)
  end
end
getResourceName(getThisResource(), true, 528848037)
return
