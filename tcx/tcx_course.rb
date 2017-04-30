#!/usr/bin/env ruby

require 'bundler/setup'
require 'ox'
require_relative 'tcx_object.rb'

module TcxToFit
  class TcxCourse < TcxObject
    def start_element(name)
    end

    def attr(name, value)
    end

    def text(value)
    end
  end
end
