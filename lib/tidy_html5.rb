require 'open3'

module TidyHtml5
  def self.bin
    @bin ||= File.expand_path(File.join(File.dirname(__FILE__), '../bin/tidy'))
  end

  def self.tidy(html, configs={})
    if configs.is_a?(Hash)
      configs = configs.collect {|k,v| "--#{k.to_s.gsub('_','-')} #{v}"}.join(' ')
    end

    raise ArgumentError.new ('config is must Hash or String') unless configs.is_a?(String)

    command = "#{bin} #{configs}"

    tidied_html = ''
    errors = ''
    Open3.popen3(command) {|stdin, stdout, stderr,  _|
      stdin.puts html
      stdin.close
      tidied_html = stdout.read
      errors = stderr.read
    }
    [tidied_html, errors]
  end
end