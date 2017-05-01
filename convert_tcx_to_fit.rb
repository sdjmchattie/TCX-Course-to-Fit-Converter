#!/usr/bin/env ruby

require 'bundler/setup'
require_relative 'tcx/tcx_file.rb'

module TcxConverter
  include Tcx

  File.open("ridewithgps.tcx") do |tcx_data|
    tcx_file = TcxFile.new(tcx_data)
    p tcx_file.data
  end
end
