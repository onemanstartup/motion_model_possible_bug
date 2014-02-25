class Item
  include MotionModel::Model
  include MotionModel::ArrayModelAdapter
  columns name: :string
  has_many :apples, dependent: :destroy

  def apples_count
    attrs = self.attributes
    attrs.delete(:id)
    apple = Apple.new(attrs)
    apple.save
    self.apples.all.count
  end
end
