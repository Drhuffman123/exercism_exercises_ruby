require "rspec"
require "log_line_parser"

RSpec.describe LogLineParser do
  it "Test 1" do
    llp = LogLineParser.new('[ERROR]: Stack overflow')
    expect(llp.message).to eq 'Stack overflow'
  end

  it "Test 2" do
    llp = LogLineParser.new('[WARNING]: Disk almost full')
    expect(llp.message).to eq "Disk almost full"
  end

  it "Test 3" do
    llp = LogLineParser.new('[INFO]: File moved')
    expect(llp.message).to eq "File moved"
  end

  it "Test 4" do
    llp = LogLineParser.new("[WARNING]:   \tTimezone not set  \r\n")
    expect(llp.message).to eq "Timezone not set"
  end

  it "Test 5" do
    llp = LogLineParser.new('[ERROR]: Disk full')
    expect(llp.log_level).to eq "error"
  end

  it "Test 6" do
    llp = LogLineParser.new("[WARNING]: Unsafe password")
    expect(llp.log_level).to eq "warning"
  end

  it "Test 7" do
    llp = LogLineParser.new("[INFO]: Timezone changed")
    expect(llp.log_level).to eq "info"
  end

  it "Test 8" do
    llp = LogLineParser.new("[ERROR]: Segmentation fault")
    expect(llp.reformat).to eq "Segmentation fault (error)"
  end

  it "Test 9" do
    llp = LogLineParser.new("[WARNING]: Decreased performance")
    expect(llp.reformat).to eq "Decreased performance (warning)"
  end

  it "Test 10" do
    llp = LogLineParser.new("[INFO]: Disk defragmented")
    expect(llp.reformat).to eq "Disk defragmented (info)"
  end

  it "Test 11" do
    llp = LogLineParser.new("[ERROR]: \t Corrupt disk\t \t \r\n")
    expect(llp.reformat).to eq "Corrupt disk (error)"
  end
end
