require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do

  it "exists" do
    list = LinkedList.new
  end

  it "has a head" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
  end

  it "can append" do
    list = LinkedList.new

    expect(list.head).to eq(nil)

    list.append("doop")

    expect(list.head).to eq("doop")
  end
    
end
