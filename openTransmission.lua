--set_window_workspace(number)
--get_application_name()
--get_window_name()
--debug_print()
--set_window_geometry(xpos, ypos, xsize ysize)

--2837 186  528  366  eric-NUC Transmission

debug_print("Window Name: " .. get_window_name());
debug_print("Application name: " .. get_application_name())

if (get_window_name()=="Transmission") then
	set_window_workspace(3);
   	set_window_geometry(2837,186,528,366);
   	minimize()
end