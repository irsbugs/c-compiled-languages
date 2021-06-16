/* 
hello.vala

May be compiled directly to executable.
OR...
May be taken to C code and then compiled to executable.

Ian Stewart. 2021-06-16
*/

void main () {
	print ("Hello World\n
	    $ valac hello.vala\n\n
	    ...OR...\n\n
	    $ valac --ccode hello.vala\n
	    $ cc hello.c `pkg-config --cflags --libs glib-2.0` -o hello\n
        ");
}
