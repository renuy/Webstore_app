class ReadShelf < ActiveRecord::Base
belongs_to :member
belongs_to :title
end
