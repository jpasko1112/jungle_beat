require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
  end

  it "has readable attributes" do
    jb = JungleBeat.new

    expect(jb.list.head).to eq(nil)
  end

  it "will append" do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
    expect(jb.list.head.data).to eq("deep")
    expect(jb.list.head.next.data).to eq("ditt")
  end
end