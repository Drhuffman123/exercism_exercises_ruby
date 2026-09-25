require "rspec"
require "port_palermo.rb"

Rspec.describe PortPalermo do
  context "IDENTIFIER" do      
    it "Test 1" do
      # assert_equal :PALE, Port::IDENTIFIER
      expect(Port::IDENTIFIER).to eq :PALE
    end
  end

  context "get_identifier" do      
    it "Test 2" do
      # assert_equal :HAMB, Port.get_identifier("Hamburg")
      expect(Port.get_identifier("Hamburg")).to eq :HAMB
    end

    it "Test 3" do
      # assert_equal :ROME, Port.get_identifier("Rome")
      expect(Port.get_identifier("Rome")).to eq :ROME
    end

    it "Test 4" do
      # assert_equal :KIEL, Port.get_identifier("Kiel")
      expect(Port.get_identifier("Kiel")).to eq :KIEL
    end

    it "Test 5" do
      # assert_equal :A, Port.get_terminal(:OIL123)
      expect(Port.get_terminal(:OIL123)).to eq :A
    end

    it "Test 6" do
      # assert_equal :A, Port.get_terminal(:GAS674)
      expect(Port.get_terminal(:GAS674)).to eq :A
    end

    it "Test 7" do
      # assert_equal :B, Port.get_terminal(:CAR942)
      expect(Port.get_terminal(:CAR942)).to eq :B
    end

    it "Test 8" do
      # assert_equal :B, Port.get_terminal(:CLO315)
      expect(Port.get_terminal(:CLO315)).to eq :B
    end
  end
end
