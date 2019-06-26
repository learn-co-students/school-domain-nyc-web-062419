require 'pry'
class School
     attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    # def student
    #     @student
    # end

    def add_student(student, grade)
        roster[grade] ||= []
        # binding.pry
        roster[grade] << student
    end

    def grade(grade)
        roster[grade]
    end

    def sort
        roster.each do |grade, student| 
        binding.pry
        roster[grade] = student.sort
        end
    end
end






# class Shoe
#     def initialize(brand)
#         @brand = brand
#     end

#     def brand
#         @brand
#     end

#     def color=(color)
#         @color = color
#       end

#       def color
#         @color
#       end

#       def size=(num)
#         @size = num
#       end
     
#       def size
#         @size
#       end

#       def material=(material)
#         @material = material
#       end
     
#       def material
#         @material
#       end

#       def condition=(condition)
#         @condition = condition
#       end
     
#       def condition
#         @condition
#       end
      
#       def cobble
#         puts "Your shoe is as good as new!"
#         @condition = "new"
#       end
# end  