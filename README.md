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
* The `lib` folder from the repository must be present in the same folder as `flow.exe`. In the Mac/Linux binaries, the contents of `lib` is embedded into the binary.
* No color in the output.
* Probably other things are broken :)

Tip: To enable OCaml exception stack traces, set the environment variable `set OCAMLRUNPARAM=b`
