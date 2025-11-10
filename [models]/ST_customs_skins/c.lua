function getDataByName(_ARG_0_)
  for _FORV_4_, _FORV_5_ in pairs(_UPVALUE0_) do
    if _FORV_4_ == _ARG_0_ then
      return _FORV_5_
    end
  end
end
function replaceModel(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  if not string.find(_ARG_0_, "^Skin_79_%d+$") or 15 < #_ARG_0_ then
    print("Model nie jest dozwolony: " .. _ARG_0_)
    return
  end
  if not engineRequestModel("ped") then
    print("Nie uda\197\130o si\196\153 uzyska\196\135 nowego modelu dla: " .. _ARG_0_)
    return
  end
  if _ARG_3_ and not engineImportTXD(_ARG_3_, (engineRequestModel("ped"))) then
    print("Nie uda\197\130o si\196\153 zaimportowa\196\135 TXD dla: " .. _ARG_0_)
    return
  end
  if _ARG_4_ and not engineReplaceCOL(_ARG_4_, (engineRequestModel("ped"))) then
    print("Nie uda\197\130o si\196\153 zast\196\133pi\196\135 COL dla: " .. _ARG_0_)
    return
  end
  if _ARG_2_ and not engineReplaceModel(_ARG_2_, (engineRequestModel("ped"))) then
    print("Nie uda\197\130o si\196\153 zast\196\133pi\196\135 DFF dla: " .. _ARG_0_)
    return
  end
  for _FORV_9_, _FORV_10_ in pairs(getElementsByType("player")) do
    if getElementData(_FORV_10_, "custom_model") and _ARG_0_ == getElementData(_FORV_10_, "custom_model") then
      setElementModel(_FORV_10_, (engineRequestModel("ped")))
    end
  end
  _UPVALUE0_[_ARG_0_] = {
    id = engineRequestModel("ped"),
    parentid = _ARG_1_
  }
end
addEventHandler("onClientElementStreamIn", root, function()
  if not source then
    return
  end
  if (getElementType(source) == "player" or getElementType(source) == "ped") and getElementData(source, "custom_model") and not getElementData(source, "player:faction") and getDataByName((getElementData(source, "custom_model"))) and getDataByName((getElementData(source, "custom_model"))).id then
    setElementModel(source, getDataByName((getElementData(source, "custom_model"))).id)
  end
end)
addEventHandler("onClientResourceStop", resourceRoot, function()
  for _FORV_3_, _FORV_4_ in ipairs(_UPVALUE0_) do
    engineFreeModel(_FORV_4_.id)
  end
end)
getResourceName(getThisResource(), true, 6752925)
return
