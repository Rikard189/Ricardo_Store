class Category < ApplicationRecord
  uniq.map{|c| c.name}.each do |v|
    self.class.class_eval do
      define_method v.downcase.split(" ").join("_") do
        find_by_name(v)
      end
    end
  end
end
#Forma de hacerlo con scope
#scope :electronics, -> {find_by_name("Electronics")}
#scope :movies, -> {find_by_name("Movies")}
#scope :clothes, -> {find_by_name("Clothes")}
#scope :books, -> {find_by_name("Books")}
