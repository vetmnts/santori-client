addEventHandler("onClientResourceStart", resourceRoot, function()
  _UPVALUE0_:ReplaceTextures()
  addEventHandler("onClientRender", root, function()
    _UPVALUE0_:Render()
  end)
end)
getResourceName(getThisResource(), true, 310328757)
return
