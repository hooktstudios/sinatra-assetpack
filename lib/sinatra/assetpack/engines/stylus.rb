module Sinatra::AssetPack
  class StylusEngine < Engine
    def css(str, options={})
      puts "COMPILEFIAL-NOT"
      Stylus.compile str, options
    rescue LoadError
      puts "COMPILEFIAL"
      nil
    end
  end

  Compressor.register :css, :styl, StylusEngine
end
