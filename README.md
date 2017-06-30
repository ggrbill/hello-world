# hello-world
My first repository on GitHub

This project is my first work/contribution into a GitHub repository in my own account.

## Build HelloWorld_CPP
To build the C++ project enter into HelloWorld_CPP folder and execute the following commands:
```shell
$ mkdir build
$ cd build
$ cmake ../ [extra options]
```

## Runing HelloWorld_PY
To run the Python version of HelloWorld it is necessary to enter into HelloWorld_PY folder, create the `hw_env` environment and execute the `HelloWorld.py` file. The following commands make all those steps: (Inside of HelloWorld_PY folder also has two PyDev project files.)
```shell
$ cd HelloWorld_PY
$ conda env create
$ [source] activate hw_env
$ python HelloWorld.py
```
The `source` command is necessary to use only in Linux Systems.
