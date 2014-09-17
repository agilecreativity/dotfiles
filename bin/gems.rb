#!/usr/bin/env ruby
# common gems for both 1.9.3 (old) and 2.1.2 (new)
BASE_GEMS = %w{
  rake
  bundler
  jekyll
  gem-ctags
  awesome_print
  pry
  code_lister
  gem_bootstrap
  index_html
  source2epub
}

# Install list of gems for a given ruby version if not already installed
def gem_install(version, gems = BASE_GEMS)
  gems.each do |gem|
    unless `gem list --local`.include?(gem)
      puts "Installing #{gem} for ruby version #{version}"
      `gem install #{gem} --no-rdoc --no-ri`
    end
  end
end

if __FILE__ == $0
  # oldest version -> most recent version
  versions = %w(1.9.3 2.1.2)
  versions.each do |version|
    puts "Installing gems for ruby version #{version}"
    `rbenv local #{version}`
    `rbenv rehash`
    gem_install(version)
    `rbenv rehash`
  end
end
