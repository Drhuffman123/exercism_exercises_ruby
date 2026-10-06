=begin
Write your code for the 'Rna Transcription' exercise in this file. Make the tests in
`rna_transcription_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/rna-transcription` directory.
=end
module RnaTranscription
  class Complement
    DNA_TO_RNA_CODE = {
      "G" => 'C',
      "C" => 'G',
      "T" => 'A',
      "A" => 'U'
    } # GCTA

    def self.of_dna(str)
      if str.length == 0 # == ''
        ''
      elsif str.length == 1
        DNA_TO_RNA_CODE[str.to_s]
      else
        str.chars.map { |char| DNA_TO_RNA_CODE[char.to_s] }.join
      end
    end
  end
end
