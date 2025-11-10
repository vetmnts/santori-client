sound = {}
function playRadio(_ARG_0_)
  if _ARG_0_ == 1 then
    _ARG_0_ = 0.1
  elseif _ARG_0_ == 2 then
    _ARG_0_ = 0.075
  elseif _ARG_0_ == 3 then
    _ARG_0_ = 0.05
  elseif _ARG_0_ == 4 then
    _ARG_0_ = 0.025
  end
  for _FORV_4_, _FORV_5_ in ipairs(_UPVALUE0_) do
    if sound[_FORV_4_] then
      stopSound(sound[_FORV_4_])
    end
    sound[_FORV_4_] = playSound3D("https://s3.slotex.pl/shoutcast/7626/listen.pls", _FORV_5_[1], _FORV_5_[2], _FORV_5_[3], true)
    setSoundMaxDistance(sound[_FORV_4_], _FORV_5_[4])
    setSoundVolume(sound[_FORV_4_], _ARG_0_)
    setElementDimension(sound[_FORV_4_], _FORV_5_[5])
  end
end
getResourceName(getThisResource(), true, 36781644)
return
