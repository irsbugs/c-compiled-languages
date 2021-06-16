# c-compiled-languages

Some languages compile to human-readable C source code. The C compiler is then used to generate the executable code.
These langauges include:
* **Vala**. Source code has the extension **.vala**
* **Genie**. Source code has the extension **.gs**
* **Vlang**. Source code has the extension **.v** 

The following files are examples of using these langauges.

## Vala
* hello.vala
* hello_gtk.vala

### Compiling

Normally vala source code is compiled directly to an executable. For example, with the source code file hello.vala:
```
$ valac hello.vala
```
However it maybe compiled to C source code and then the C compiler converts it to an executable image. 
```
$ valac --ccode hello.vala
$ cc hello.c `pkg-config --cflags --libs glib-2.0` -o hello\n
```
In the case of using a library, like Gtk, then normal compiling is:
```
$ valac --pkg gtk+-3.0 hello_gtk.vala
```

While compile to C source and then to executable is:
```
$ valac --ccode --pkg gtk+-3.0 hello_gtk.vala
$ cc hello_gtk.c `pkg-config --cflags --libs glib-2.0 gtk+-3.0` -o hello_gtk
```

## Genie
* hello_genie.gs

### Compiling
May be compiled to executable with:
```
$ valac hello_genie.gs
```

## V
* TBA


