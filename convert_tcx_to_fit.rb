#!/usr/bin/env ruby

require 'bundler/setup'
require_relative 'tcx/tcx_file.rb'

module TcxConverter
  include Tcx

  tcx_file = TcxFile.new('ridewithgps.tcx')
  p tcx_file.data
end
