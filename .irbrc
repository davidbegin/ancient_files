class Object
	include Rails::ConsoleMethods if defined?(Rails)

	def vi(method_name)
		file, line = method(method_name).source_location
		fork do
			exec("vi +#{line} '#{file}'")
		end
		Process.wait
	end
	
	def mate(method_name)
		file, line = method(method_name).source_location
		`mate '#{file}' -l #{line}`
	end
end

def y(obj)
	puts obj.to_yaml
end

if defined? Rails
	begin
		Hirb.enable
	rescue LoadError
	end
end
