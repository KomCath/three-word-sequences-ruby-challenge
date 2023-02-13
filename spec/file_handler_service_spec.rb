# frozen_string_literal: true

require 'pry'
require_relative '../src/file_handler_service'

RSpec.describe FileHandlerService do
  subject(:service) { described_class.new(file: extension) }
  let(:extension) { 'banana.txt' }

  describe '.initialize' do
    it 'requires a file argument' do
      expect { described_class.new }.to raise_error ArgumentError
    end
  end

  describe '#call' do
    let(:file) { instance_double(File, read: expected_output) }
    let(:expected_output) { 'bananas are the best' }

    before do
      allow(File).to receive(:read).with(extension).and_return(expected_output)
    end

    it 'reads the file successfully' do
      expect(service.call).to eq(expected_output)
    end

    context 'when file type is not txt' do
      let(:extension) { 'foo.csv' }

      it 'raise an error for incorrect file type' do
        expect { service.call }.to raise_error(FileHandlerService::IncorrectFileTypeError)
      end
    end
  end
end
