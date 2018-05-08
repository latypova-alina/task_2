lib_dir = File.expand_path("lib", File.dirname(__FILE__))
$LOAD_PATH << lib_dir unless $LOAD_PATH.include?(lib_dir)

require "ticket"
require "lucky"
require "writer"

namespace :tickets do
  desc "This task generates and writes ordinary and lucky tickets"
  task :generate_and_write do
    lucky_tickets = Lucky.collect()
    Ticket.new(lucky_tickets).generate
  end
end
