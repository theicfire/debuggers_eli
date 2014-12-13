# Code for "How debuggers work: Part 2 - Breakpoints"

This is the code for http://eli.thegreenplace.net/2011/01/27/how-debuggers-work-part-2-breakpoints

The main additions I've added is that this compiles for both 32 and 64 bit. Additionally, there's a nice Makefile that should get you up and running faster.

The first example in the post sets a breakpoint in hello.asm. To run (and compile) it:

```
$ make run_manual
```

The second example uses a nice library Eli built that wraps ptrace for debugging. To run (and compile) it:

```
$ make run_with_lib
```

Currently the second example **does not work on 64 bit machines**. An assertion error is thrown. I haven't spent the time debugging it. Pull requests on this issue are very welcome!
