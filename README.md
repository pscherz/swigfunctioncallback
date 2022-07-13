# Testing callbacks from higher level languages

We have a function in C that gets a callback function, how can we provide a
callback function from a scripting language?

## Tested with

Python 3.10 and dotnet 6.0 on Fedora 34.

## Build order

* First clib. `make` should suffice.
* then the others. `make run` should build and run.
