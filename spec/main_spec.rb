describe "Application 'woody'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "Items count should be right\n" do
    Item.deserialize_from_file('items.dat')
    Item.destroy_all
    first_count = Item.all.count
    puts "First count is #{first_count}\n"
    Item.new(name: 'item').save
    Item.serialize_to_file('items.dat')
    puts "Count after serizalize is #{Item.all.count}\n"
    Item.all.count.should == first_count + 1
    Item.deserialize_from_file('items.dat')
    Item.deserialize_from_file('items.dat')
    Item.deserialize_from_file('items.dat')
    Item.deserialize_from_file('items.dat')
    Item.all.each {|i| puts "Item id is #{i.id}"}
    puts "Count after two deserialization is #{Item.all.count}"
    Item.all.count.should == first_count + 1
  end
end
