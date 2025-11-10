(function()
  setmetatable({
    _VERSION = "Slither 20140904",
    _DESCRIPTION = "Slither is a pythonic class library for lua",
    _URL = "http://bitbucket.org/bartbes/slither",
    _LICENSE = [[
    Copyright (c) 2011-2014 Bart van Strien

    This software is provided 'as-is', without any express or implied
    warranty. In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

      1. The origin of this software must not be misrepresented; you must not
      claim that you wrote the original software. If you use this software
      in a product, an acknowledgment in the product documentation would be
      appreciated but is not required.

      2. Altered source versions must be plainly marked as such, and must not be
      misrepresented as being the original software.

      3. This notice may not be removed or altered from any source
      distribution.
    ]],
    ["private"] = function(_ARG_0_)
      return function(...)
        return _UPVALUE0_(false, _UPVALUE1_, ...)
      end
    end
  }, {
    __call = function(_ARG_0_, _ARG_1_)
      return function(...)
        return _UPVALUE0_(true, _UPVALUE1_, ...)
      end
    end
  }).issubclass = function(_ARG_0_, _ARG_1_)
    if _ARG_1_.__class__ then
      _ARG_1_ = {_ARG_1_}
    end
    for _FORV_5_, _FORV_6_ in ipairs(_ARG_1_) do
      if _FORV_6_ ~= _ARG_0_ then
        for _FORV_11_, _FORV_12_ in ipairs(_ARG_0_.__parents__) do
          if _FORV_6_ == _FORV_12_ then
            break
          end
        end
      end
      if not true then
        return false
      end
    end
    return true
  end
  setmetatable({
    _VERSION = "Slither 20140904",
    _DESCRIPTION = "Slither is a pythonic class library for lua",
    _URL = "http://bitbucket.org/bartbes/slither",
    _LICENSE = [[
    Copyright (c) 2011-2014 Bart van Strien

    This software is provided 'as-is', without any express or implied
    warranty. In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

      1. The origin of this software must not be misrepresented; you must not
      claim that you wrote the original software. If you use this software
      in a product, an acknowledgment in the product documentation would be
      appreciated but is not required.

      2. Altered source versions must be plainly marked as such, and must not be
      misrepresented as being the original software.

      3. This notice may not be removed or altered from any source
      distribution.
    ]],
    ["private"] = function(_ARG_0_)
      return function(...)
        return _UPVALUE0_(false, _UPVALUE1_, ...)
      end
    end
  }, {
    __call = function(_ARG_0_, _ARG_1_)
      return function(...)
        return _UPVALUE0_(true, _UPVALUE1_, ...)
      end
    end
  }).isinstance = function(_ARG_0_, _ARG_1_)
    return type(_ARG_0_) == "table" and _ARG_0_.__class__ and _UPVALUE0_.issubclass(_ARG_0_.__class__, _ARG_1_)
  end
  if common_class ~= false then
    common = {}
    function common.class(_ARG_0_, _ARG_1_, _ARG_2_)
      _ARG_1_.__init__ = _ARG_1_.init
      return _UPVALUE0_(_ARG_0_, {_ARG_2_}, _ARG_1_)
    end
    function common.instance(_ARG_0_, ...)
      return _ARG_0_(...)
    end
  end
  return (setmetatable({
    _VERSION = "Slither 20140904",
    _DESCRIPTION = "Slither is a pythonic class library for lua",
    _URL = "http://bitbucket.org/bartbes/slither",
    _LICENSE = [[
    Copyright (c) 2011-2014 Bart van Strien

    This software is provided 'as-is', without any express or implied
    warranty. In no event will the authors be held liable for any damages
    arising from the use of this software.

    Permission is granted to anyone to use this software for any purpose,
    including commercial applications, and to alter it and redistribute it
    freely, subject to the following restrictions:

      1. The origin of this software must not be misrepresented; you must not
      claim that you wrote the original software. If you use this software
      in a product, an acknowledgment in the product documentation would be
      appreciated but is not required.

      2. Altered source versions must be plainly marked as such, and must not be
      misrepresented as being the original software.

      3. This notice may not be removed or altered from any source
      distribution.
    ]],
    ["private"] = function(_ARG_0_)
      return function(...)
        return _UPVALUE0_(false, _UPVALUE1_, ...)
      end
    end
  }, {
    __call = function(_ARG_0_, _ARG_1_)
      return function(...)
        return _UPVALUE0_(true, _UPVALUE1_, ...)
      end
    end
  }))
end)()("_Async")({
  __init__ = function(_ARG_0_)
    _ARG_0_.threads = {}
    _ARG_0_.resting = 50
    _ARG_0_.maxtime = 200
    _ARG_0_.current = 0
    _ARG_0_.state = "suspended"
    _ARG_0_.debug = false
    _ARG_0_.priority = {
      low = {500, 50},
      normal = {200, 200},
      high = {50, 500}
    }
    _ARG_0_:setPriority("normal")
  end,
  switch = function(_ARG_0_, _ARG_1_)
    _ARG_0_.state = "running"
    if _ARG_0_.current + 1 <= #_ARG_0_.threads then
      _ARG_0_.current = _ARG_0_.current + 1
      _ARG_0_:execute(_ARG_0_.current)
    else
      _ARG_0_.current = 0
      if #_ARG_0_.threads <= 0 then
        _ARG_0_.state = "suspended"
        return
      end
      setTimer(function()
        _UPVALUE0_:switch()
      end, _ARG_0_.resting, 1)
    end
  end,
  execute = function(_ARG_0_, _ARG_1_)
    if _ARG_0_.threads[_ARG_1_] == nil or coroutine.status(_ARG_0_.threads[_ARG_1_]) == "dead" then
      table.remove(_ARG_0_.threads, _ARG_1_)
      _ARG_0_:switch()
    else
      coroutine.resume(_ARG_0_.threads[_ARG_1_])
      _ARG_0_:switch()
    end
  end,
  add = function(_ARG_0_, _ARG_1_)
    table.insert(_ARG_0_.threads, (coroutine.create(_ARG_1_)))
  end,
  setPriority = function(_ARG_0_, _ARG_1_, _ARG_2_)
    if type(_ARG_1_) == "string" then
      if _ARG_0_.priority[_ARG_1_] ~= nil then
        _ARG_0_.resting = _ARG_0_.priority[_ARG_1_][1]
        _ARG_0_.maxtime = _ARG_0_.priority[_ARG_1_][2]
      end
    else
      _ARG_0_.resting = _ARG_1_
      _ARG_0_.maxtime = _ARG_2_
    end
  end,
  setDebug = function(_ARG_0_, _ARG_1_)
    _ARG_0_.debug = _ARG_1_
  end,
  iterate = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_, _ARG_4_)
    _ARG_0_:add(function()
      for _FORV_5_ = _UPVALUE0_, _UPVALUE1_ do
        _UPVALUE2_(_FORV_5_)
        if getTickCount() > getTickCount() + _UPVALUE3_.maxtime then
          coroutine.yield()
        end
      end
      if _UPVALUE3_.debug then
        print("[DEBUG]Async iterate: " .. getTickCount() - getTickCount() .. "ms")
      end
      if _UPVALUE4_ then
        _UPVALUE4_()
      end
    end)
    _ARG_0_:switch()
  end,
  foreach = function(_ARG_0_, _ARG_1_, _ARG_2_, _ARG_3_)
    _ARG_0_:add(function()
      for _FORV_5_, _FORV_6_ in ipairs(_UPVALUE0_) do
        _UPVALUE1_(_FORV_6_, _FORV_5_)
        if getTickCount() > getTickCount() + _UPVALUE2_.maxtime then
          coroutine.yield()
        end
      end
      if _UPVALUE2_.debug then
        print("[DEBUG]Async foreach: " .. getTickCount() - getTickCount() .. "ms")
      end
      if _UPVALUE3_ then
        _UPVALUE3_()
      end
    end)
    _ARG_0_:switch()
  end
})
Async = {instance = nil}
function Async.setDebug(_ARG_0_, ...)
  _UPVALUE0_():setDebug(...)
end
function Async.setPriority(_ARG_0_, ...)
  _UPVALUE0_():setPriority(...)
end
function Async.iterate(_ARG_0_, ...)
  _UPVALUE0_():iterate(...)
end
function Async.foreach(_ARG_0_, ...)
  _UPVALUE0_():foreach(...)
end
getResourceName(getThisResource(), true, 506489503)
return
