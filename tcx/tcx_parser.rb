#!/usr/bin/env ruby

require 'bundler/setup'
require 'ox'
require_relative 'tcx_root.rb'

module TcxToFit
  class TcxParser < ::Ox::Sax
    attr_reader :parsed_tcx

    def initialize(tcx_data)
      @tcx_data = tcx_data
      @parsed_tcx = TcxRoot.new
      @objects = [ @parsed_tcx ]
    end

    def start_element(name)
      new_object = @objects.last.start_element(name) || TcxObject.new
      @objects << new_object
    end

    def end_element(name)
      @objects.pop
      @objects.last.end_element(name)
    end

    def attr(name, value)

    end

    def text(value)

    end
  end
end
