require "logger"

module YARD
  def self.logger
    unless @logger
      @logger = Logger.new(STDOUT)
      @logger.datetime_format = ""
      @logger.level = Logger::INFO
    end
    @logger
  end
end

class Logger::Formatter
  def call(sev, time, prog, msg)
    "[#{sev}]: #{msg}\n"
  end
end

def log; YARD.logger end