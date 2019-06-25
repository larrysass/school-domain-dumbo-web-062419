class School
    attr_accessor :name, :roster

    def initialize(name)
    @name = name
    @roster = {}
    end

    def add_student(student, grade)
        roster[grade] ||= []
        roster[grade] << student
    end

    def grade(number)
        return roster[number]
    end

    def sort
        sorted_hash = {}
        roster.each do |grade, student|
            sorted_hash[grade] = student.sort
        end
        return sorted_hash
    end
end