class HomeController < ApplicationController
  def index
    if params['url']
      puts '------------------------------------'
      if params['format_d'] == 'mp4'
        @file = YoutubeDL.download params['url'], output: 'public/download/some_file.mp4'
      elsif params['format_d'] == 'mp3'
        @file = YoutubeDL.download params['url'], output: 'public/download/some_file.mp3'
      end
      puts '------------------------------------'
    end
  end

  def download(file)
    #.split('public/download/')
    send_file file, filename: "video.mp4", type: "application/mp4"
  end
  
  def list
  end

  def downloaded
  end
end
