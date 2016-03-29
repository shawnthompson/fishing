#global module:false
module.exports = (grunt) ->

	@registerTask(
		"default"
		"Default task, that runs the production build"
		[
			"dist"
		]
	)

	@registerTask(
		"dist"
		"Produces the production files"
		[
			"build"
		]
	)

	@registerTask(
		"build"
		"Produces unminified files"
		[
			"css"
		]
	)

	@registerTask(
		"css"
		"INTERNAL: Compiles Sass"
		[
			"sass"
			"cssmin"
		]
	)

	@initConfig
		sass:
			all:
				options:
					precision: 10
				expand: true
				cwd: "src"
				src: "*.scss"
				dest: "/css"
				ext: ".css"

		cssmin:
			expand: true
			cwd: "/css/"
			src: "*.css",
			ext: ".min.css"
			dest: "/css"
