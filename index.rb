require 'sinatra'
set :public_folder, '.'

mp3Files = Dir.glob("**/*.mp3")

mp3DB = Hash.new

for mp3File in mp3Files
  mp3DB[mp3File] = File.basename(mp3File).sub! '.mp3', ''
end

get '/' do
  inputFile = params['q']
  if !inputFile
    return "mp3 station"
  else
    @songs = Array.new
    for mp3Path, mp3File in mp3DB
      if mp3File.include?inputFile
        @songs.push({"name": mp3File ,"path": mp3Path})
      end
    end
    erb :search
  end
end

