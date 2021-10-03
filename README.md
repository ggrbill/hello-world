# hello-world
Basic hello world project in _C++_ and _Python_

This project is my first work/contribution into a GitHub repository in my own account.

## Setup and activate the environment
This project is based in a `conda` environment using `conda-devenv` tool. For `miniconda` package installation follow the instructions [here](https://conda.io/miniconda.html) and for `conda-devenv` installation instructions click [here](https://conda-devenv.readthedocs.io/en/latest/installation.html).

To create and activate the conda environment called `hw_env` execute the following commands into project root folder
```shell
$ conda devenv
$ conda activate hw_env
```
The command `conda-devenv` must be installed to create/update the environment. Installation instructions can be found [here](https://conda-devenv.readthedocs.io/en/latest/installation.html).


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

## Build HelloWorld in _Rust_
To build the Rust project enter into `HelloWorld_Rust` folder using:
```shell
$ cd HelloWorld_Rust
```
And execute the following commands:
```shell
$ mkdir build
$ cd build
$ rustc ../main.rs
```

## Build HelloWorld in _Fortran_
To build the Rust project enter into `HelloWorld_Fortran` folder using:
```shell
$ cd HelloWorld_Fortran
```
And execute the following commands:
```shell
$ mkdir build
$ cd build
$ gfortran ../hello.f90
```
