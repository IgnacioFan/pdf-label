# require 'rack/test'
require 'minitest/spec'
require 'minitest/autorun'

gem_dir = File.join(File.dirname(__FILE__), '..', 'lib')
$LOAD_PATH.unshift File.expand_path(gem_dir)

require 'pdf_label'
