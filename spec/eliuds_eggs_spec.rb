require "spec"
require "eliuds_eggs.rb"

# copy of my Crystal-lang spec:

Rspec.describe EliudsEggs do
  it "Test 1 : 0 eggs" do
    # assert_equal 0, EliudsEggs.egg_count(0)
    expect(EliudsEggs.egg_count(0)).to eq 0
  end
  
  it "Test 2 : 1 eggs" do
    # assert_equal 1, EliudsEggs.egg_count(16)
    expect(EliudsEggs.egg_count(16)).to eq 1
  end
  
  it "Test 3 : 4 eggs" do
    # assert_equal 4, EliudsEggs.egg_count(89)
    expect(EliudsEggs.egg_count(89)).to eq 4
  end
  
  it "Test 4 : 13 eggs" do
    # assert_equal 13, EliudsEggs.egg_count(2_000_000_000)
    expect(EliudsEggs.egg_count(2_000_000_000)).to eq 13
  end
end
