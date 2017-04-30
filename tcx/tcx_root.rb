#!/usr/bin/env ruby

require 'bundler/setup'
require 'ox'
require_relative 'tcx_object.rb'
require_relative 'tcx_training_center_database.rb'

module TcxToFit
  class TcxRoot < TcxObject
    attr_reader :training_center_database

    def start_element(name)
      case name
      when :TrainingCenterDatabase
        @training_center_database = TcxTrainingCenterDatabase.new
      end
    end
  end
end
