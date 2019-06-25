require 'pry'

class School

    
    def initialize(name)
        @name = name
        @roster = {}
    end

    def roster
        @roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(grade)
        @roster[grade]
    end
    
    def sort
        @roster.collect do |grade, students|
            @roster[grade] = students.sort
            # binding.pry
        end
        @roster
    end
            
end