#!/usr/bin/env ruby
#MISE description="Ruby AU in Red rainbow"
# frozen_string_literal: true

$LOAD_PATH << File.join(File.dirname(__FILE__), '../lib')

require 'demo_ruby'

# based on some more codes
#   for code in {0..255}
#     do echo -e "\e[38;5;${code}m"'\\e[38;5;'"$code"m"\e[0m"
#   done
def colour_the_lines(lines)
  counts = [5, 52, 53, 88, 89, 124, 125, 160, 161, 162, 196, 197, 198]
  mod_count = lines.count / counts.length
  index = 0
  lines.each do |line|
    puts "\e[38;5;#{counts[index / mod_count]}m#{line}"
    index += 1
  end
end

colour_the_lines(DemoRuby.run.split("\n"))
