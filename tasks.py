from invoke import task 

@task()
def clean(ctx):
	"""
	Delete 'build' folder.
	"""
	print("Cleaning!")
	ctx.run("rm -Rf build")

@task(
	help = {
		'cclean': "Call Clean task (Delete 'build' folder) before build again."
	}
)
def build_cpp(ctx, cclean=False):
	"""
	Build C++ code.
	"""
	if cclean:
		clean(ctx)

	print("Building!")
	commands = [
		'mkdir build',
		'cd build',
		'cmake ..',
		'cmake --build .',
	]
	ctx.run(' && '.join(commands))


@task(
	help = {
		'cclean': "Call Clean task (Delete 'build' folder) before build again."
	}
)
def build_rust(ctx, cclean=False):
	"""
	Build Rust code.
	"""
	if cclean:
		clean(ctx)

	print("Building!")
	commands = [
		'mkdir build',
		'cd build',
		'rustc ../main.rs',
	]
	ctx.run(' && '.join(commands))


@task(
	help = {
		'cclean': "Call Clean task (Delete 'build' folder) before build again."
	}
)
def build_fortran(ctx, cclean=False):
	"""
	Build Fortran90 code.
	"""
	if cclean:
		clean(ctx)

	print("Building!")
	commands = [
		'mkdir build',
		'cd build',
		'f95 ../hello.f95 -o hello',
	]
	ctx.run(' && '.join(commands))