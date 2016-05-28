require 'sqlite3'

puts "Initializing \"shahbot.db\" in data..."

begin
    database = SQLite3::Database.new "data/shahbot.db"
    puts "Database successfully initialized!"
rescue
    $stderr.print "Failed to create DB: " + $!
end
