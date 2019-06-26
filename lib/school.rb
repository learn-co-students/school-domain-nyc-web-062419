# code here!
require 'pry'

class School 
    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        @student = name
        @grade = grade
        if @roster.include?(grade) == false
            @roster[grade] = []
        end
        @roster[grade] << name
    end

    def grade(num)
        @roster[num]
    end

    def sort
        @roster.each do |name, grade|
            @roster[name] = grade.sort
        end
    end
end


