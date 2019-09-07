class Student < ApplicationRecord
    belongs_to :user 
    has_many :lessons, dependent: :destroy
    # has_many :comments, dependent: :destroy
    has_many :standards, through: :lessons, dependent: :destroy
    
    def self.with_standards 
        self.all.each do |student| 
           {student: student, standards: student.standards} 
        end 
    end 

    # def self.with_comments 
    #     self.all.each do |student| 
    #        {student: student, comments: student.comments} 
    #     end 
    # end 
end
