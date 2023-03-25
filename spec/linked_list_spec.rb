require "./lib/linked_list"
require "./lib/node"

RSpec.describe LinkedList do
  it "exists" do
    list = LinkedList.new

    expect(list).to be_an_instance_of(LinkedList)
    expect(list.head).to eq(nil)
  end

  # append - adds a new piece of data to the list
  it "can append" do
    list = LinkedList.new

    expect(list.head).to eq(nil)
    expect(list.append("doop")).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  # count - tells us how many things are in the list
  it "can count nodes" do
    list = LinkedList.new

    list.append("doop")

    expect(list.count).to eq(1)
  end

  # to_string - generates a string of all the elements in the list, separated by spaces
  it "can be a string" do
    list = LinkedList.new

    list.append("doop")

    expect(list.to_string).to eq ("doop")
  end

  it "can append multiple nodes" do
    list = LinkedList.new

    expect(list.head).to eq(nil)

    list.append("doop")
    
    expect(list.head).not_to be_nil
    expect(list.head.next_node).to eq(nil)

    list.append("deep")

    expect(list.head.next_node).not_to be_nil
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  # prepend will add nodes to the beginning of the list.
  it "can prepend multiple nodes" do
    list = LinkedList.new

    list.append("plop")

    expect(list.to_string).to eq("plop")

    list.append("suu")

    expect(list.to_string).to eq("plop suu")

    list.prepend("dop")

    expect(list.to_string).to eq("dop plop suu")

    list.count

    expect(list.count).to eq(3)
  end
end
