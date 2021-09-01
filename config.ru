# INFO: Simple Rack APP
# run ->(env) { [404,  {'Content-Type' => 'application/json'}, ['Hello from RackApp']]}

# $LOAD_PATH.unshift(File.dirname(__FILE__))

$:.unshift File.dirname(__FILE__)

require_relative 'application'

run Application