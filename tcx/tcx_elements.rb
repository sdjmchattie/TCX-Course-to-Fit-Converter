#!/usr/bin/env ruby

require 'bundler/setup'
require 'happymapper'

module Tcx
  class Position
    include HappyMapper

    tag 'Position'

    has_one :latitude_degrees, Float, :tag => 'LatitudeDegrees'
    has_one :longitude_degrees, Float, :tag => 'LongitudeDegrees'
  end

  class Trackpoint
    include HappyMapper

    tag 'Trackpoint'

    has_one :time, Time, :tag => 'Time'
    has_one :altitude_meters, Float, :tag => 'AltitudeMeters'
    has_one :distance_meters, Float, :tag => 'DistanceMeters'
    has_one :position, Position, :tag => 'Position'
  end

  class CoursePoint
    include HappyMapper

    tag 'CoursePoint'

    has_one :name, String, :tag => 'Name'
    has_one :time, Time, :tag => 'Time'
    has_one :point_type, String, :tag => 'PointType'
    has_one :notes, String, :tag => 'Notes'
    has_one :position, Position, :tag => 'Position'
  end

  class Track
    include HappyMapper

    tag 'Track'

    has_many :trackpoints, Trackpoint, :tag => 'Trackpoint'
  end

  class Course
    include HappyMapper

    tag 'Course'

    has_one :name, String, :tag => 'Name'
    has_many :tracks, Track, :tag => 'Track'
    has_many :coursepoints, CoursePoint, :tag => 'CoursePoint'
  end

  class Courses
    include HappyMapper

    tag 'Courses'

    has_many :courses, Course, :tag => 'Course'
  end

  class TrainingCenterDatabase
    include HappyMapper

    tag 'TrainingCenterDatabase'

    has_one :courses, Courses, :tag => 'Courses', :xpath => '.'
  end
end
