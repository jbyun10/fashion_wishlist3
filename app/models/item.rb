class Item < ActiveRecord::Base

belongs_to :occasion , :class_name => "Occasion", :foreign_key => "occasion_id"

belongs_to :category

end
