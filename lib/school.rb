require 'pry'

class School

    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(student, grade)
        #binding.pry
        if @roster.key? grade
            @roster[grade] << student
        else
            @roster[grade] = [student]
        end
        
    end

    def grade(grade)
        if @roster.key? grade
            return @roster[grade]
        end
    end

    def sort
        @roster.map do |grade, students_array|
            @roster[grade] = students_array.sort
        end
        return @roster
        
    end


end