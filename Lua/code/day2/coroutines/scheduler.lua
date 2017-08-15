local function sort_by_time(array)
  table.sort(array, function(event1, event2)
    return event1.time < event2.time
  end)
end

local function remove_first(array)
  result = array[1]
  array[1] = array[#array]
  array[#array] = nil
  return result
end

local pending = {}

local function schedule(time, action)
  pending[#pending + 1] = {
    time = time,
    action = action
  }

  sort_by_time(pending)
end

local function wait(seconds)
  coroutine.yield(seconds)
end

local function run()
  while #pending > 0 do
    while os.clock() < pending[1].time do end --busy work

    local item = remove_first(pending)
    local _, seconds = coroutine.resume(item.action)

    if seconds then
      later = os.clock() + seconds
      schedule(later, item.action)
    end
  end
end

return {
  schedule = schedule,
  run = run,
  wait = wait
}