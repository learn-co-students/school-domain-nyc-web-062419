# code here!
require 'pry'

class School
    attr_accessor :roster, :name

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade].class != Array
            @roster[grade] = []
            @roster[grade].push(student)
        else
            @roster[grade].push(student)
        end
    end

    def grade(gradeNum)
        @roster[gradeNum]    
    end

    def sort
        @roster.keys.each do |gradeNum|
            @roster[gradeNum] = @roster[gradeNum].sort
        end
        @roster = @roster.sort.to_h
        @roster
    end

end

ns = School.new("NSHA")
ns.add_student("Homer", 10)
ns.add_student("Bart", 10)
ns.add_student("Ben", 12)

ns.sort