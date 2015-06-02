require 'pp'
require 'byebug'
require 'aws-sdk'

# TODO Lazy load stuff
Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/sources/*.rb'].each {|file| require file }
Dir[File.dirname(__FILE__) + '/rules/**/*.rb'].each {|file| require file }

runner = CheckRun.new
runner.run

puts "Done!"
