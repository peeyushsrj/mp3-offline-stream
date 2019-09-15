#!/usr/bin/env ruby
require 'sinatra'
set :public_folder, '.'
set :bind, '0.0.0.0'
set :port, 4444

mp3Files = Dir.glob("**/*.mp3")
puts "Scanned #{mp3Files.length} mp3 files"

mp3DB = Hash.new

for mp3File in mp3Files
  mp3DB[mp3File] = File.basename(mp3File.downcase).sub! '.mp3', ''
end

get '/' do
  inputFile = params['q']
  if !inputFile
  	inputFile = " "
  end
  
  inputFile = inputFile.downcase
  @songs = Array.new
  for mp3Path, mp3File in mp3DB
    if mp3File.include?inputFile
      @songs.push({"name": mp3File ,"path": mp3Path})
    end
  end
  erb :search
  
end
