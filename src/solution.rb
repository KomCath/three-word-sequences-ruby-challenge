# frozen_string_literal: true

require 'pry'
require_relative './file_handler_service'
require_relative './word_sequence_builder'

def call_service
  FileHandlerService.new(file: ARGV[0]).call
end

def call_builder
  WordSequenceBuilder.new(text: call_service).build
end

def main
  puts "Welcome to Cath's Code Challenge!"

  puts

  begin
    return puts 'Ops file is missing' if ARGV[0].nil?

    puts call_builder
  rescue FileHandlerService::IncorrectFileTypeError => e
    puts e.to_s
  end

  puts

  puts 'Loaded'
end

main
