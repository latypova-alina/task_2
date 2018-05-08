module Writer
  def write(str, file)
    File.open("lib/#{file}", "a+") { |f| f << "#{str}\n" }
  end
end
