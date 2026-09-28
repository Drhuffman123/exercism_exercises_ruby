# high_scores_spec.rb
require "spec"
require "high_scores"

Rspec.describe HighScores do
  context "scores.. init" do
    it "Test 1" do
      scores = [30, 50, 20, 70]
      # assert_equal [30, 50, 20, 70], HighScores.new(scores).scores
      expect(HighScores.new(scores).scores).to eq([30, 50, 20, 70])
    end
  end

  context "latest" do
    it "Test 2" do
      scores = [100, 0, 90, 30]
      # assert_equal 30, HighScores.new(scores).latest
      expect(HighScores.new(scores).latest).to eq(30)
    end
  end

  context "personal_best" do
    it "Test 3" do
      scores = [40, 100, 70]
      # assert_equal 100, HighScores.new(scores).personal_best
      expect(HighScores.new(scores).personal_best).to eq(100)
    end
  end

  context "personal_top_three"
    it "Test 4" do
      scores = [10, 30, 90, 30, 100, 20, 10, 0, 30, 40, 40, 70, 70]
      # assert_equal [100, 90, 70], HighScores.new(scores).personal_top_three
      expect(HighScores.new(scores).personal_top_three).to eq([100, 90, 70])
    end
  
    it "Test 5" do
      scores = [20, 10, 30]
      # assert_equal [30, 20, 10], HighScores.new(scores).personal_top_three
      expect(HighScores.new(scores).personal_top_three).to eq([30, 20, 10])
    end

    it "Test 6" do
      scores = [40, 20, 40, 30]
      # assert_equal [40, 40, 30], HighScores.new(scores).personal_top_three
      expect(HighScores.new(scores).personal_top_three).to eq([40, 40, 30])
    end

    it "Test 7" do
      scores = [30, 70]
      # assert_equal [70, 30], HighScores.new(scores).personal_top_three
      expect(HighScores.new(scores).personal_top_three).to eq([70, 30])
    end

    it "Test 8" do
      scores = [40]
      # assert_equal [40], HighScores.new(scores).personal_top_three
      expect(HighScores.new(scores).personal_top_three).to eq([40])
    end
  end

  context "latest" do
    it "Test 9" do
      high_scores = HighScores.new([70, 50, 20, 30])
      high_scores.personal_top_three
      # assert_equal 30, high_scores.latest
      expect(high_scores.latest).to eq 30
    end
    
    it "Test 11" do
      high_scores = HighScores.new([20, 70, 15, 25, 30])
      high_scores.personal_best
      # assert_equal 30, high_scores.latest
      expect(high_scores.latest).to eq 30
    end
  end

  context "scores" do
    it "Test 10" do
      high_scores = HighScores.new([30, 50, 20, 70])
      high_scores.personal_top_three
      # assert_equal [30, 50, 20, 70], high_scores.scores
      expect(high_scores.scores).to eq [30, 50, 20, 70]
    end
    
    it "Test 12" do
      high_scores = HighScores.new([20, 70, 15, 25, 30])
      high_scores.personal_best
      # assert_equal [20, 70, 15, 25, 30], high_scores.scores
      expect(high_scores.scores).to eq [20, 70, 15, 25, 30]
    end

  end

  context "latest_is_personal_best?" do
    it "Test 13" do
      scores = [100, 40, 10, 70]
      # refute HighScores.new(scores).latest_is_personal_best?
      expect(HighScores.new(scores).latest_is_personal_best?).to be false
    end

    it "Test 14" do
      scores = [70, 40, 10, 100]
      # assert HighScores.new(scores).latest_is_personal_best?
      expect(HighScores.new(scores).latest_is_personal_best?).to be true
    end
  end
end
