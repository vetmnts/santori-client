function updateRope()
  toggleControl("fire", false)
  toggleControl("aim_weapon", false)
  for _FORV_3_, _FORV_4_ in pairs(ropesElements) do
    attachedRopeElement = _FORV_4_.attached
    if _FORV_4_.isCasting and _FORV_4_.castTarget then
      _FORV_4_.castProgress = math.min(1, _FORV_4_.castProgress + _FORV_4_.castSpeed)
      for _FORV_23_ = 1, #_FORV_4_.ropeSegments do
        _FORV_4_.ropeSegments[_FORV_23_].x = getElementPosition(_FORV_4_.attachedElement) + (_FORV_4_.castTarget.x - getElementPosition(_FORV_4_.attachedElement)) * (_FORV_23_ / #_FORV_4_.ropeSegments * _FORV_4_.castProgress)
        _FORV_4_.ropeSegments[_FORV_23_].y = getElementPosition(_FORV_4_.attachedElement) + (_FORV_4_.castTarget.y - getElementPosition(_FORV_4_.attachedElement)) * (_FORV_23_ / #_FORV_4_.ropeSegments * _FORV_4_.castProgress)
        _FORV_4_.ropeSegments[_FORV_23_].z = getElementPosition(_FORV_4_.attachedElement) + (-4 * 8 * (_FORV_23_ / #_FORV_4_.ropeSegments * _FORV_4_.castProgress - 0.5) ^ 2 + 8)
      end
      if _FORV_4_.castProgress >= 1 then
        _FORV_4_.isCasting = false
      end
    end
    _FORV_4_.ropeSegments[1].x, _FORV_4_.ropeSegments[1].y, _FORV_4_.ropeSegments[1].z = getPositionFromElementOffset(_FORV_4_.attachedElement, _FORV_4_.attachOffset[1], _FORV_4_.attachOffset[2], _FORV_4_.attachOffset[3])
    if not _FORV_4_.isCasting then
      if _FORV_4_.isReeling then
        for _FORV_20_ = 2, #_FORV_4_.ropeSegments do
          if math.sqrt((_FORV_4_.ropeSegments[1].x - _FORV_4_.ropeSegments[_FORV_20_].x) * (_FORV_4_.ropeSegments[1].x - _FORV_4_.ropeSegments[_FORV_20_].x) + (_FORV_4_.ropeSegments[1].y - _FORV_4_.ropeSegments[_FORV_20_].y) * (_FORV_4_.ropeSegments[1].y - _FORV_4_.ropeSegments[_FORV_20_].y) + (_FORV_4_.ropeSegments[1].z - _FORV_4_.ropeSegments[_FORV_20_].z) * (_FORV_4_.ropeSegments[1].z - _FORV_4_.ropeSegments[_FORV_20_].z)) > 1.0E-4 then
            _FORV_4_.ropeSegments[_FORV_20_].x = _FORV_4_.ropeSegments[_FORV_20_].x + (_FORV_4_.ropeSegments[1].x - _FORV_4_.ropeSegments[_FORV_20_].x) * _FORV_4_.reelSpeed
            _FORV_4_.ropeSegments[_FORV_20_].y = _FORV_4_.ropeSegments[_FORV_20_].y + (_FORV_4_.ropeSegments[1].y - _FORV_4_.ropeSegments[_FORV_20_].y) * _FORV_4_.reelSpeed
            _FORV_4_.ropeSegments[_FORV_20_].z = _FORV_4_.ropeSegments[_FORV_20_].z + (_FORV_4_.ropeSegments[1].z - _FORV_4_.ropeSegments[_FORV_20_].z) * _FORV_4_.reelSpeed
          end
        end
        if getTickCount() - _FORV_4_._reelRemoveTick > 100 and #_FORV_4_.ropeSegments > 2 then
          table.remove(_FORV_4_.ropeSegments, 2)
          _FORV_4_._reelRemoveTick = getTickCount()
        end
      end
      for _FORV_19_ = 2, #_FORV_4_.ropeSegments do
        _FORV_4_.ropeSegments[_FORV_19_].z = _FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.gravity
        if math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z)) > 0 then
          _FORV_4_.ropeSegments[_FORV_19_].x = _FORV_4_.ropeSegments[_FORV_19_].x + (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * ((_FORV_4_.segmentLength - math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z))) / math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z))) * _FORV_4_.stiffness
          _FORV_4_.ropeSegments[_FORV_19_].y = _FORV_4_.ropeSegments[_FORV_19_].y + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * ((_FORV_4_.segmentLength - math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z))) / math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z))) * _FORV_4_.stiffness
          _FORV_4_.ropeSegments[_FORV_19_].z = _FORV_4_.ropeSegments[_FORV_19_].z + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * ((_FORV_4_.segmentLength - math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z))) / math.sqrt((_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) * (_FORV_4_.ropeSegments[_FORV_19_].x - _FORV_4_.ropeSegments[_FORV_19_ - 1].x) + (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) * (_FORV_4_.ropeSegments[_FORV_19_].y - _FORV_4_.ropeSegments[_FORV_19_ - 1].y) + (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z) * (_FORV_4_.ropeSegments[_FORV_19_].z - _FORV_4_.ropeSegments[_FORV_19_ - 1].z))) * _FORV_4_.stiffness
          if #_FORV_4_.ropeSegments + _FORV_19_ - 1 < 10 then
            _FORV_4_.ropeSegments[_FORV_19_].z = 0
          elseif getGroundPosition(_FORV_4_.ropeSegments[_FORV_19_].x, _FORV_4_.ropeSegments[_FORV_19_].y, _FORV_4_.ropeSegments[_FORV_19_].z + 1) < -0.5 then
            _FORV_4_.ropeSegments[_FORV_19_].z = 0
          else
            _FORV_4_.ropeSegments[_FORV_19_].z = getGroundPosition(_FORV_4_.ropeSegments[_FORV_19_].x, _FORV_4_.ropeSegments[_FORV_19_].y, _FORV_4_.ropeSegments[_FORV_19_].z + 1) + 0.1
          end
        end
      end
    end
    for _FORV_19_ = 1, #_FORV_4_.ropeSegments - 1 do
      dxDrawLine3D(_FORV_4_.ropeSegments[_FORV_19_].x, _FORV_4_.ropeSegments[_FORV_19_].y, _FORV_4_.ropeSegments[_FORV_19_].z, _FORV_4_.ropeSegments[_FORV_19_ + 1].x, _FORV_4_.ropeSegments[_FORV_19_ + 1].y, _FORV_4_.ropeSegments[_FORV_19_ + 1].z, _FORV_4_.color, _FORV_4_.size)
    end
    if attachedRopeElement and _FORV_4_.ropeSegments[#_FORV_4_.ropeSegments] then
      if renderMiniGierka or dataJob.zlowilRybke then
        _FORV_4_.fishBiteZ = math.sin(getTickCount() % 300 / 300 * math.pi * 2) * 0.25
      elseif not _FORV_4_.isReeling and not _FORV_4_.isCasting then
        if not dataJob.jestBranie and getTickCount() >= _FORV_4_.nextFishBiteTime then
          if #_FORV_4_.ropeSegments >= 30 then
            dataJob.jestBranie = true
            dataJob.text = "#00f00cmasz branie#ffffff, kliknij #ffbf00LPM"
            _FORV_4_.fishBiteEndTime = getTickCount() + 5000
          else
            dataJob.text = "twoja \197\188y\197\130ka jest za blisko, zarzu\196\135 ponownie"
          end
        end
        if dataJob.jestBranie then
          if getTickCount() < _FORV_4_.fishBiteEndTime then
            _FORV_4_.fishBiteZ = math.sin(getTickCount() % 300 / 300 * math.pi * 2) * 0.25
          else
            dataJob.jestBranie = false
            dataJob.text = "zarzucono sp\197\130awik, poczekaj na branie"
            _FORV_4_.fishBiteZ = 0
            _FORV_4_.nextFishBiteTime = getTickCount() + math.random(10000, 15000)
          end
        else
          _FORV_4_.fishBiteZ = 0
        end
      else
        _FORV_4_.fishBiteZ = 0
      end
      setElementPosition(attachedRopeElement.element, _FORV_4_.ropeSegments[#_FORV_4_.ropeSegments].x + attachedRopeElement.offset[1], _FORV_4_.ropeSegments[#_FORV_4_.ropeSegments].y + attachedRopeElement.offset[2], _FORV_4_.ropeSegments[#_FORV_4_.ropeSegments].z + attachedRopeElement.offset[3] + _FORV_4_.fishBiteZ)
      setElementRotation(attachedRopeElement.element, attachedRopeElement.rot[1], attachedRopeElement.rot[2], attachedRopeElement.rot[3])
      if not isElement(dataJob.veh) or isElementInWater(dataJob.veh) then
      elseif not _FORV_4_.isReeling and not _FORV_4_.isCasting then
        usunZylke()
      end
    end
    if _FORV_4_.isReeling and #_FORV_4_.ropeSegments <= 2 then
      usunZylke()
    end
  end
end
ropesElements = {}
function createRope(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_, _ARG_5_, _ARG_6_, _ARG_7_)
  assert(isElement(_ARG_0_), "invaild element, createRope @1")
  assert(type(_ARG_1_) == "table", "invaild table, createRope @2")
  assert(tonumber(_ARG_2_), "invaild number, createRope @3")
  assert(tonumber(_ARG_3_), "invaild number, createRope @4")
  assert(tonumber(_ARG_4_), "invaild number, createRope @5")
  assert(tonumber(_ARG_5_), "invaild number, createRope @6")
  ropesElements[createElement("3d-rope_rybak")] = {
    attachedElement = _ARG_0_,
    attachOffset = _ARG_1_,
    segmentLength = _ARG_2_,
    numSegments = _ARG_3_,
    gravity = _ARG_4_,
    stiffness = _ARG_5_,
    color = _ARG_6_ or _UPVALUE0_,
    size = _ARG_7_ or _UPVALUE1_,
    ropeSegments = {}
  }
  for _FORV_13_ = 1, _ARG_3_ do
    ropesElements[createElement("3d-rope_rybak")].ropeSegments[_FORV_13_] = {
      x = 0,
      y = 0,
      z = 0
    }
  end
  ropesElements[createElement("3d-rope_rybak")].isCasting = true
  ropesElements[createElement("3d-rope_rybak")].castProgress = 0
  ropesElements[createElement("3d-rope_rybak")].castSpeed = 0.007
  ropesElements[createElement("3d-rope_rybak")].castTarget = nil
  ropesElements[createElement("3d-rope_rybak")].isReeling = false
  ropesElements[createElement("3d-rope_rybak")].reelSpeed = 1.0E-10
  ropesElements[createElement("3d-rope_rybak")]._reelRemoveTick = getTickCount()
  ropesElements[createElement("3d-rope_rybak")].fishBiteEndTime = 0
  ropesElements[createElement("3d-rope_rybak")].nextFishBiteTime = getTickCount() + math.random(10000, 15000)
  ropesElements[createElement("3d-rope_rybak")].fishBiteZ = 0
  dataJob.jestBranie = false
  return (createElement("3d-rope_rybak"))
end
function attachRopeElement(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  assert(isElement(_ARG_0_), "invaild 3d-rope-element, attachRopeElement @1")
  assert(ropesElements[_ARG_0_], "invaild rope data. re-create the rope")
  assert(isElement(_ARG_1_), "invaild element, attachRopeElement @2")
  if _ARG_2_ then
    assert(type(_ARG_2_) == "table", "invaild table, attachRopeElement @3")
  end
  if _ARG_3_ then
    assert(type(_ARG_2_) == "table", "invaild table, attachRopeElement @4")
  end
  ropesElements[_ARG_0_].attached = {
    element = _ARG_1_,
    offset = _ARG_2_ or {
      0,
      0,
      0
    },
    rot = _ARG_3_ or {
      0,
      0,
      0
    }
  }
end
addEventHandler("onClientElementDestroy", getRootElement(), function()
  if getElementType(source) == "3d-rope_rybak" and ropesElements[source] then
    ropesElements[source] = nil
  end
end)
function getPositionFromElementOffset(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
  return _ARG_1_ * getElementMatrix(_ARG_0_)[1][1] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][1] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][1] + getElementMatrix(_ARG_0_)[4][1], _ARG_1_ * getElementMatrix(_ARG_0_)[1][2] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][2] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][2] + getElementMatrix(_ARG_0_)[4][2], _ARG_1_ * getElementMatrix(_ARG_0_)[1][3] + _ARG_2_ * getElementMatrix(_ARG_0_)[2][3] + _ARG_3_ * getElementMatrix(_ARG_0_)[3][3] + getElementMatrix(_ARG_0_)[4][3]
end
