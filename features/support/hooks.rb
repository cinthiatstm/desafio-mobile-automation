Before do 
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  
  @screen = AndroidScreens.new if device_type.eql?("android")
  @screen = IOSScreens.new if device_type.eql?("ios")

end

After do |scenario|

  time = Time.new
	Dir.mkdir('report') unless Dir.exist?('report')

	sufix = ('fail' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase

	screenshot("report/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png")

  $driver.driver_quit
end

