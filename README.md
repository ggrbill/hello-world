# hello-world
Basic hello world project in _C++_ and _Python_

This project is my first work/contribution into a GitHub repository in my own account.

## Setup and activate the environment
This project is based in a conda environment, for miniconda package installation follow the instructions [here](https://conda.io/miniconda.html).

To create and activate the conda environment called `hw_env` execute the following commands into project root folder
```shell
$ conda env create
$ [source] activate hw_env
```
If you are in a Unix based systems you have to `[source]`.

## Build HelloWorld in _C++_
To build the C++ project enter into `HelloWorld_CPP` folder using:
```shell
$ cd HelloWorld_CPP
```
and execute the following commands:
```shell
$ mkdir build
$ cd build
$ cmake ../ [extra options]
```
Depending on the OS will be available a `MSVC` solution file (Windows) or a `Makefile` (Unix based).

## Running HelloWorld in _Python_
To run the Python version of _HelloWorld_ is necessary to enter into `HelloWorld_PY` folder and execute the `HelloWorld.py` file. The following commands make all those steps: 
```shell
$ cd HelloWorld_PY
$ python HelloWorld.py
```
Also, it is available  two _PyDev_ project files inside of `HelloWorld_PY` folder.

