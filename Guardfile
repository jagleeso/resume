# A sample Guardfile
# More info at https://github.com/guard/guard#readme

# Add files and commands to this file, like the example:
#   watch(%r{file/path}) { `command(s)` }
#
guard :shell, :all_on_start => true do
  watch(/resume\.tex/) do |m| 
      puts "="*100
      `make resume.pdf`
  end
  watch(/one_page\.tex|references.bib/) do |m| 
      puts "="*100
      `make one_page.pdf`
  end
end
