class MP3Importer
    
    attr_accessor :path

    def initialize (filepath)
        @path = filepath
    end

    def files
       @files = Dir.glob("#{path}/*.mp3").collect{|file| file.gsub("#{path}/", "") }
    end

    def import 
        files.each {|file| Song.new_by_filename}
    end

end