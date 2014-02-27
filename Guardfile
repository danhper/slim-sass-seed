guard 'livereload' do
  watch(%r{views/.+\.(erb|haml|slim)$})
  watch(%r{public/.+\.(css|js|html)})
end

guard 'sass', :input => 'public/sass', :output => 'public/css'

guard 'coffeescript', :input => 'public/coffee', :output => 'public/js', :bare => false
