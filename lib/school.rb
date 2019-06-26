class School

  
#add instance variable of roster set equal to empty hash
  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end  

#@roster is empty so we can add grade with brackets, @roster[grade] amnd set it equal to an empty array and then shovel in name
  def add_student(name, grade)
    if @roster.has_key?(grade) 
      @roster[grade] << name
    else
      @roster[grade] = [name]
    end
  end

  def grade(grade)
    @roster[grade]
  end
  
  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
