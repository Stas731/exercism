class LogLineParser
    def initialize(line)
      @line = line
    end
  
    def message
      @line.gsub(/^\[.*\]: /, '').strip
    end
  
    def log_level
      @line.downcase.match(/\[([^\]]+)\]/)[1]
    end
  
    def reformat
        "#{message} (#{log_level})"
    end
  end
  
  p LogLineParser.new('[INFO]: Operation completed').reformat
