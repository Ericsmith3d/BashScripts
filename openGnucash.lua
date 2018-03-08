--set_window_workspace(number)
--get_application_name()
--get_window_name()
--debug_print()
--set_window_geometry(xpos, ypos, xsize ysize)



debug_print("Window Name: " .. get_window_name());
debug_print("Application name: " .. get_application_name())

if (get_window_name()=="GnuCash") then
	set_window_workspace(1);
   	set_window_geometry(2207,104,994,629);
   	minimize()
end