class Apple
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  belongs_to :item
end
