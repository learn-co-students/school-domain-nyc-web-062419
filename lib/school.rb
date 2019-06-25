require 'pry'
require 'byebug'

class School

attr_accessor :school_name, :roster, :student_name, :grade_level, :new_roster

	def initialize(school_name)
		@school_name = school_name
		@roster = {}
	end

	def add_student(student_name, grade_level)
		@roster[grade_level] ||= []
		@roster[grade_level] << student_name
	end

	def grade(grade_level)
		@roster[grade_level].collect do |students|
			students
		end
	end

	def sort
		@roster.collect do |grade_level, student_name|
			@roster[grade_level] = student_name.sort
		end
		@roster
	end
end