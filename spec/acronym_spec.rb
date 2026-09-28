require "spec"
require "acronym"

# copy of my Crystal-lang spec:

Rspec.describe Acronym do
  context "Task 1" do
    it "Test 1" do
      # assert_equal 'PNG', Acronym.abbreviate('Portable Network Graphics')
      expect(Acronym.abbreviate("Portable Network Graphics")).to eq("PNG")
    end

    it "Test 2" do
      # assert_equal 'ROR', Acronym.abbreviate('Ruby on Rails')
      Acronym.abbreviate("Ruby on Rails").should eq("ROR")
    end

    it "Test 3" do
      # assert_equal 'FIFO', Acronym.abbreviate('First In, First Out')
      Acronym.abbreviate("First In, First Out").should eq("FIFO")
    end
  end

  context "TASK 2" do
    it "Test 4" do
      # assert_equal 'GIMP', Acronym.abbreviate('GNU Image Manipulation Program')
      Acronym.abbreviate("GNU Image Manipulation Program").should eq("GIMP")
    end

    it "Test 5" do
      # assert_equal 'CMOS', Acronym.abbreviate('Complementary metal-oxide semiconductor')
      Acronym.abbreviate("Complementary metal-oxide semiconductor").should eq("CMOS")
    end

    it "Test 6" do
      # assert_equal 'ROTFLSHTMDCOALM', Acronym.abbreviate('Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me')
      Acronym.abbreviate("Rolling On The Floor Laughing So Hard That My Dogs Came Over And Licked Me").should eq("ROTFLSHTMDCOALM")
    end
  end

  context "TASK 3" do
    it "Test 7" do
      # assert_equal 'SIMUFTA', Acronym.abbreviate('Something - I made up from thin air')
      Acronym.abbreviate("Something - I made up from thin air").should eq("SIMUFTA")
    end

    it "Test 8" do
      # assert_equal 'HC', Acronym.abbreviate('Halley\'s Comet')
      Acronym.abbreviate("Halley's Comet").should eq("HC")
    end

    it "Test 9" do
      # assert_equal 'TRNT', Acronym.abbreviate('The Road _Not_ Taken')
      Acronym.abbreviate("The Road _Not_ Taken").should eq("TRNT")
    end
  end
end
