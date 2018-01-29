require 'pg'

conn = PG.connect(:host => 'ruby.cc7iq1jo8fya.us-west-2.rds.amazonaws.com', :port => 5432, :dbname => 'postgres', :user => 'ruby', :password => 'somedumbpass')
res = conn.exec('SELECT version()')
puts res[0]
