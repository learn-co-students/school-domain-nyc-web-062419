

class School 
    #we are using attr_reader here rather than attr_accessor because we dont want people to be able to write over these instance variables
    attr_reader :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    # add_student is the roster setter method
    def add_student(student, grade)
        # roster[grade] = [] unless roster[grade]
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(grade)
        # self.roster[grade]
        @roster[grade]
    end

    def sort
        self.roster.each do |grade,students|
            students.sort!
        end
    end




end
