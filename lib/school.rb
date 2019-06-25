# code here!

class School

    def initialize (name)
        @name = name
        @roster = {}
    end

    attr_reader :name
    attr_reader :roster 

    def add_student(name, grade)
        if @roster.keys.include? grade
            @roster[grade] << name
        else
            @roster[grade] = [name]
        end
    end

    def grade(num)
        @roster[num]
    end

    def sort
        sorted = {}
        @roster.each do |grade, student_array|

            sorted[grade] = student_array.sort

        end
        sorted

    end

end

