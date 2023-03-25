require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
  end

  it "has a head" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
  end

  it "can append" do
    list = LinkedList.new

    expect(list.head).to eq(nil)

    list.append("doop")
    
    expect(list.head.data).to eq("doop")
require 'pry'; binding.pry
    expect(list.head.next_node).to eq(nil)
  end
 

  it "can check next node" do
    list = LinkedList.new
    expect(list.head).to eq(nil)

    list.append("doop")

    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)

  end

  it "can count nodes" do
    list = LinkedList.new
    expect(list.head).to eq(nil)

    list.append("doop")
    expect(list.head.data).to eq("doop")
  end
    
  xit "can be a string" do
    list = LinkedList.new
    expect(list.head).to eq(nil)
    list.append("doop")
    list.to_string
    expect(list.to_string).to eq ("doop")
  end
end
