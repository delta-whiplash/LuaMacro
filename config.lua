print('Version: ' .. lmc.version)
lmc.minimizeToTray = true
lmc_minimize()
-- assign logical name to macro keyboard
-- lmc_print_devices()  -- To get the ID of your keyboard
lmc_device_set_name('MACROS', '381898C3')
-- lmc_assign_keyboard('MACROS'); -- To launch the keys detection

print('Started') -- Print the Started

-- define callback for whole device
lmc_set_handler('MACROS', function(button, direction)
    if (direction == 1) then
        return
    end -- ignore down

    if (button == 111) then -- character of numpad : "/"
        lmc_send_keys('^k^c)') --  Comment the block (vscode)

    elseif (button == 106) then -- character of numpad : "*"
        lmc_send_keys('^k^u)') -- Uncomment the block (vscode)

    elseif (button == 109) then -- character of numpad : "-"
        lmc_send_keys('^{NUMMINUS}') -- Zoom out

    elseif (button == 103) then -- character of numpad : "7"
        lmc_spawn("explorer") -- open the windows file explorer

    elseif (button == 104) then -- character of numpad : "8"
        lmc_send_keys('^+{ESCAPE}') -- Open Taskmanager

    elseif (button == 105) then -- character of numpad : "9"
        lmc_send_keys('^%+B') -- Brave Browser Don't forget to modify the shotcut to CTRL+ALT+MAJ+B

    elseif (button == 107) then -- character of numpad : "+"
        lmc_send_keys('^{NUMPLUS}') -- Zoom in

    elseif (button == 100) then -- character of numpad : "4"
        lmc_send_keys('^#{LEFT}') -- Go to the LEFT Virtual Desktop

    elseif (button == 101) then -- character of numpad : "5"
        lmc_send_keys('^%+V') -- Visual Studio CODE Don't forget to modify the shotcut to CTRL+ALT+MAJ+V

    elseif (button == 102) then -- character of numpad : "6"
        lmc_send_keys('^#{RIGHT}') -- Go to the right Virtual Desktop

    elseif (button == 8) then -- character of numpad : "<-"
        lmc_send_keys('^+K')  -- Delete a line on vscode

    elseif (button == 97) then -- character of numpad : "1"
        lmc_send_keys('#d') -- Show Desktop

    elseif (button == 98) then -- character of numpad : "2"
        lmc_spawn('mstsc') -- RDP client 

    elseif (button == 99) then -- character of numpad : "3"
        lmc_send_keys('^%+F') -- VMWARE Workstation Pro Don't forget to modify the shotcut to CTRL+ALT+MAJ+F

    elseif (button == 13) then -- character of numpad : "enter"
        lmc_send_keys('#+S') -- Windows Screenshot shotcut

    elseif (button == 96) then -- character of numpad : "0"
        lmc_send_keys('^{NUM0}') -- Zoom 0

    elseif (button == 110) then -- character of numpad : "."
        lmc_send_keys('%+F')  -- Auto Formating in vscode
    else
        print('Not yet assigned: ' .. button)
    end
end)
