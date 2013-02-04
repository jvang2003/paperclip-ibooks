# encoding: utf-8
module Paperclip
  class Ibook < Processor

    # Performs the extraction of the thumbnail from the *file*. Returns the Tempfile
    # that contains the new image.
    def make
      parameters = []
      parameters << source_file_options
      parameters << ":source"
      parameters << transformation_command
      parameters << convert_options
      parameters << ":dest"
      parameters = parameters.flatten.compact.join(" ").strip.squeeze(" ")

      src = @file

      ibook = Tempfile.new("ibook-image.jpg")
      ibook.binmode

      dst = Tempfile.new(["thumbnail", @format ? ".#{@format}" : ''])
      dst.binmode

      begin
        Paperclip.run("unzip", ["-pq", ":source", "iTunesArtwork", ">", ":dest"], source: File.expand_path(src.path), dest: File.expand_path(ibook.path))
        Paperclip.run("convert", parameters, source: File.expand_path(ibook.path), dest: File.expand_path(dst.path))
      rescue Cocaine::CommandLineError
        raise PaperclipError, "There was an error processing the thumbnail" if @whiny
      end

      dst
    end
  end

end
