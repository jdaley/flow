# Flow on Windows (Experimental)

This is an experimental port of [Flow](https://github.com/facebook/flow) to run on Windows.

Flow is a static typechecker for JavaScript. See [flowtype.org](http://flowtype.org) for official documentation and binaries for Mac and Linux.

## Building Flow on Windows

Install [OCPWin](http://www.typerex.org/ocpwin.html) 32-bit "full MinGW".

In the root of this repository:

```
ocp-build make -asm
copy /Y _obuild\flow\flow.asm.exe flow.exe
```

Try it out:

```
flow --version
flow single examples\01_HelloWorld
```

## Limitations

* Server/multi-process mode doesn't work. You must use the `single` command.
* The `lib` folder and `find.exe` file from the repository must be present in the same folder as `flow.exe`. On Mac/Linux, the contents of `lib` is embedded into the binary, and `find` is native.
* No color in the output.
* Probably other things are broken. In particular, `hack\heap\hh_shared.c` is just a stub implementation, and I don't really know what impact that has.

Tip: To enable OCaml exception stack traces, set the environment variable `set OCAMLRUNPARAM=b`
