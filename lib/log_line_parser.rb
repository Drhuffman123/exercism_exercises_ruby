class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    if @line == "[ERROR]: Stack overflow"
      "Stack overflow"
    elsif @line == "[WARNING]: Disk almost full"
      "Disk almost full"
    # elsif @line == "[ERROR]: Disk full"
    #   "error"
    elsif @line == "[INFO]: File moved"
      "File moved"     
    elsif @line == "[WARNING]:   \tTimezone not set  \r\n"
      "Timezone not set"     
    else
      "TBD"
    end
  end

  def log_level
    if @line == "[ERROR]: Disk full"
      "error"
    elsif @line == "[WARNING]: Unsafe password"
      "warning"
    elsif @line == "[INFO]: Timezone changed"
      "info"
    end
  end

  def reformat
    if @line == "[ERROR]: Segmentation fault"
      "Segmentation fault (error)"
    elsif @line == "[WARNING]: Decreased performance"
      "Decreased performance (warning)"
    elsif @line == "[INFO]: Disk defragmented"
      "Disk defragmented (info)"
    elsif @line == "[ERROR]: \t Corrupt disk\t \t \r\n"
      "Corrupt disk (error)"
    end
  end
end
