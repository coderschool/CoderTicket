class Region < ActiveRecord::Base
    validates_inclusion_of :name, in: ['Ho Chi Minh', 'Ha Noi', 'Binh Thuan', 'Da Nang', 'Lam Dong']
    validates_uniqueness_of :name
end
