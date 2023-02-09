# frozen_string_literal: true

require 'pry'
require './file_handler_service'
require './word_sequence_builder'

puts 'hello team!'

def finder_argument
  FileHandlerService.new(file: ARGV[0]).call
end

def call_services
  WordSequenceBuilder.new(string: finder_argument).call
end

puts

begin
  call_services
rescue FileHandlerService::IncorrectFileTypeError => exception
  puts exception.to_s
end

puts

puts 'Loaded'
