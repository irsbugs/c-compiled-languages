using Gtk;
/* 
hello_gtk.vala


May be compiled directly to executable.
OR...
May be taken to C code and then compiled to executable.

Ian Stewart. 2021-06-16
*/
int main (string[] args) {
	Gtk.init (ref args);

	var window = new Window ();
	window.title = "Hello, World!";
	window.border_width = 10;
	window.window_position = WindowPosition.CENTER;
	window.set_default_size (350, 70);
	window.destroy.connect (Gtk.main_quit);

	var label = new Label ("Hello, World!\n 
	    Compile with: $ valac --pkg gtk+-3.0 hello_gtk.vala\n\n
	    ...OR...\n\n
	    $ valac --ccode --pkg gtk+-3.0 hello_gtk.vala\n
	    $ cc hello_gtk.c `pkg-config --cflags --libs glib-2.0 gtk+-3.0` -o hello_gtk\n
	    ");

	window.add (label);
	window.show_all ();

	Gtk.main ();
	return 0;
}
