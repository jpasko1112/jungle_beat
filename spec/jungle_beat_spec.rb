require "./lib/jungle_beat"
require "./lib/linked_list"
require "./lib/node"

RSpec.describe JungleBeat do
  it "exists" do
    jb = JungleBeat.new

    expect(jb).to be_an_instance_of(JungleBeat)
    expect(jb.list.head).to eq(nil)
  end

  it "will append" do
    jb = JungleBeat.new

    expect(jb.append("deep doo ditt")).to eq("deep doo ditt")
  end
end