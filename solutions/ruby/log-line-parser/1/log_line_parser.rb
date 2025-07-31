class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.gsub(/\[[A-Z]+\]:/, '').strip
  end

  def log_level
    closing_braket = @line.match(/\]/)
    @line[1, closing_braket.begin(0) - 1].downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end
