do

	function run(msg, matches)
		return io.popen(matches[1]):read('*all')
	end

	return {
		description = 'Run a system command.',
		usage = {'!bin <command>'},
		patterns = {
			'^!bin (.*)$'
		},
		run = run
	}

end
