#!/usr/bin/env ruby

require 'bundler/setup'
require 'ox'
require_relative 'tcx_object.rb'
require_relative 'tcx_course.rb'

module TcxToFit
  class TcxTrainingCenterDatabase < TcxObject
    attr_reader :courses

    def initialize
      @courses_element_started = false
      @courses = []
    end

    def start_element(name)
      case name
      when :Courses
        @courses_element_started = true
        self
      when :Course
        return nil unless @courses_element_started
        @courses << TcxCourse.new
        @courses.last
      end
    end

    def end_element(name)
      case name
      when :Courses
        @courses_element_started = false
      end
    end
  end
end
