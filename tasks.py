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
def build(ctx, cclean=False):
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
