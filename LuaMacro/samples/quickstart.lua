-- assign logical name to macro keyboard
lmc_assign_keyboard('MACROS');

-- define callback for whole device
lmc_set_handler('MACROS',function(button, direction)
  if (direction == 1) then return end  -- ignore down
  if     (button == 13) then lmc_spawn("calc")
  elseif (button == string.byte('backspace')) then lmc_spawn("notepad")
  elseif (button == string.byte('H')) then lmc_send_keys('Hello world')
  else print('Not yet assigned: ' .. button) 
  end
end)
