#!/usr/bin/env ruby

require 'bundler/setup'
require 'nokogiri'
require_relative 'tcx_elements.rb'

module Tcx
  class TcxFile
    attr_reader :data

    def initialize(tcx_data)
      @data = TrainingCenterDatabase.parse(Nokogiri::XML(tcx_data), :single= => true)
    end
  end
end
