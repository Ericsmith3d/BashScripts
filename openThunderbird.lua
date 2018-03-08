--set_window_workspace(number)
--get_application_name()
--get_window_name()
--debug_print()
--set_window_geometry(xpos, ypos, xsize ysize)

--1944 80   1905 1000 eric-NUC Inbox - Mozilla Thunderbird

debug_print("Window Name: " .. get_window_name());
debug_print("Application name: " .. get_application_name())

if (get_window_name()=="Mozilla Thunderbird") then
	set_window_workspace(1);
   	set_window_geometry(1944,80,1905,1000);
end