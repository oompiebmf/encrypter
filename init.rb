require 'optparse'



options = {}
optparse = OptionParser.new do |opts|
  opts.banner = "Usage: encrypter.rb -t type of encryption 1 = default 2 = non-default -s string to encrypt"
  opts.on("-t type" "--type") do |type|
    unless type == 1||2
      raise ArgumentError, "The type must be either 1 or 2, chop"
    end
    options[:type] = type
  end
  opts.on('-s strng' '--string') do |strng|
    unless strng
      raise ArgumentError, "Please include a string chop"
    end
    options[:strng] = strng
  end
end

optparse.parse!

APP_ROOT = File.dirname(__FILE__)

$:.unshift( File.join( APP_ROOT, 'lib'))

require 'app'

