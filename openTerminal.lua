--set_window_workspace(number)
--get_application_name()
--get_window_name()
--debug_print()
--set_window_geometry(xpos, ypos, xsize ysize)

debug_print("Window Name: " .. get_window_name());
debug_print("Application name: " .. get_application_name())

if (get_window_name()=="Terminal") then
	set_window_workspace(2);
   	--set_window_geometry(179,131,1232,792);
end