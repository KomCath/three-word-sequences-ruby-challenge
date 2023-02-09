# frozen_string_literal: true

# Service that handles file imput from user
class FileHandlerService
  class IncorrectFileTypeError < StandardError; end

  # attr_accessor :file

  def initialize(file:)
    @file = file
  end

  def call
    check_format
    read_file
  end

  private

  def check_format
    raise IncorrectFileTypeError, 'File type must be .txt please.' unless @file.end_with?('.txt')
  end

  def read_file
    File.read(@file)
  end
end
