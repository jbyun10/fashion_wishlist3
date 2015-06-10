class Occasion < ActiveRecord::Base

has_many :items , :class_name => "Item", :foreign_key => "occasion_id"

end
