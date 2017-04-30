#!/usr/bin/env ruby

require 'bundler/setup'
require_relative 'tcx_parser.rb'
require 'ox'

module TcxToFit
  class TcxFile
    attr_reader :data

    def initialize(tcx_data)
      tcx_parser = TcxParser.new(tcx_data)
      Ox.sax_parse(tcx_parser, tcx_data)
      @data = tcx_parser.parsed_tcx
    end
  end
end
