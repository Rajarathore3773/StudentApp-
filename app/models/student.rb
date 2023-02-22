class Student < ApplicationRecord
    
    has_many :exams , dependent: :destroy
    has_one :result

   
    
    validates :f_name, presence: true
    validates :l_name, presence: true
    validates :email, presence: true
    validates :rollno, presence: true
    validates :contact, presence: true
    validates :address, presence: true

end
