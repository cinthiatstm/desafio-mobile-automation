require "report_builder"
require "date"

Before do 
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 10

  device_type = "android"
  
  @screen = AndroidScreens.new if device_type.eql?("android")
end

After do |scenario|
  time = Time.new
	Dir.mkdir('report') unless Dir.exist?('report')

	sufix = ('fail' if scenario.failed?) || 'sucess'
	name = scenario.name.tr(' ','_').downcase

	screenshot("report/#{sufix}_#{name}_#{time.day}-#{time.month}-#{time.year}.png")

  $driver.driver_quit
end

at_exit do
  @infos = {
    "Data do Teste" => Time.now.to_s,
  }
  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Cadastro Cliente Mobile"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end