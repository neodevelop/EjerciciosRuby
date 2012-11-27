require 'gserver'

class LogServer < GServer

  def initialize
    super(12345)
  end

  def serve(client)
    clien.puts get_end_of_log_files
  end

  private
  def get_end_of_log_files
    File.open("/var/log/system.log") do | log |
      log.seek(-500, IO::SEEK_END)
      log.gets
      log.read
    end
  end

end

server = LogServer.new
server.start.join
