class Item
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  columns name: :string
  # has_many :events, dependent: :destroy
  # belongs_to :person_day
end
