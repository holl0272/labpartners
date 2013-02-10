require 'pry'
require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_support/all'
require 'pg'

#------> Menu Method <------#
before do
  sql = "select distinct genre from videos"
  @nav_rows = run_sql(sql)
end
#<---make @nav_rows aval--->#


#---> Edit Methods <---#
get '/videos/:video_id/edit/' do
  sql = "select * from videos where id = #{params['video_id']}"
  rows = run_sql(sql)
  @row = rows.first
  erb :new
end

post '/videos/:video_id' do
  sql = "update videos set title='#{params['title']}', description='#{params['description']}', url='#{params['url']}', genre='#{params['genre']}' where id = #{params['video_id']}"
  run_sql(sql)
  redirect to('/videos')
end
#<-------------------->#


#---> Delete Methods <---#
post '/videos/:video_id/delete' do
  sql = "delete from videos where id = #{params['video_id']}"
  run_sql(sql)
  redirect to('/videos')
end
#<---------------------->#


#---> Nav Methods <---#
get '/' do
  erb :home
end

get '/new' do
  erb :new
end

get '/videos/:genre' do
  sql = "select * from videos where genre = '#{params['genre']}'";
  @rows = run_sql(sql)
  erb :videos
end
#<----NAV PAGE----->#


#---> Render Methods <---#
get '/videos' do
  sql = "SELECT * FROM videos;"
  @rows = run_sql(sql)
  erb :videos
end
#<------LIST PAGE------->#


#---> Create Methods <---#
post '/create' do
  sql = "INSERT INTO videos (title, description, url, genre) VALUES ('#{params['title']}', '#{params['description']}', '#{params['url']}', '#{params['genre']}')"
  run_sql(sql)
  redirect to('/videos')
end
#<-----CREATE PAGE------>#


#---> SQL Method <---#
def run_sql(sql)
  conn = PG.connect(:dbname =>'video_list', :host => 'localhost')
  result = conn.exec(sql)
  conn.close

  result
end
#<------------------>#