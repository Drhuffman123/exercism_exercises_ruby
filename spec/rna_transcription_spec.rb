require "rspec"
require "rna_transcription"

Rspec.describe RnaTranscription::Complement do
  context "value" do
    it "Test 1" do
      actual = RnaTranscription::Complement.of_dna('')
      expected = ''
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 2" do
      actual = RnaTranscription::Complement.of_dna('C')
      expected = 'G'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 3" do
      actual = RnaTranscription::Complement.of_dna('G')
      expected = 'C'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 4" do
      actual = Complement.of_dna('T')
      expected = 'A'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 5" do
      actual = Complement.of_dna('A')
      expected = 'U'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end

    it "Test 6" do
      actual = Complement.of_dna('ACGTGGTCTTAA')
      expected = 'UGCACCAGAAUU'
      # assert_equal expected, actual
      expect(actual).to eq expected
    end
  end
end
