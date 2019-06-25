require "pry"

# code here!
class School
    attr_accessor :roster
    attr_reader :name
    def initialize(name)
        @name = name
        @roster = {}
    end
    def add_student(name,grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end
    def grade(grade)
        self.roster[grade]
    end
    def sort
        x = {}
        @roster.map do |grade,name|
           x[grade] = roster[grade].sort
        end
        binding.pry
        Hash[x.sort]
    end
end