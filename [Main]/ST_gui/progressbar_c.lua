function createProgressbar(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
  addEventHandler("onClientRender", root, _UPVALUE0_.onRender)
  _UPVALUE0_.tick = getTickCount()
  _UPVALUE0_.progress = {
    _ARG_0_,
    _ARG_1_,
    _ARG_2_,
    _ARG_3_,
    text,
    _ARG_4_
  }
  _UPVALUE0_.texs = {
    dxCreateTexture("img/progressbar/lines.png", "argb", false, "clamp"),
    dxCreateTexture("img/progressbar/bar.png", "argb", false, "clamp"),
    dxCreateTexture("img/progressbar/progress.png", "argb", false, "clamp")
  }
end
function destroyProgressbar()
  removeEventHandler("onClientRender", root, _UPVALUE0_.onRender)
  _UPVALUE0_.progress = {}
  for _FORV_3_, _FORV_4_ in pairs(_UPVALUE0_.texs) do
    if _FORV_4_ and isElement(_FORV_4_) then
      destroyElement(_FORV_4_)
    end
  end
  _UPVALUE0_.texs = {}
end
getResourceName(getThisResource(), true, 952905739)
return
