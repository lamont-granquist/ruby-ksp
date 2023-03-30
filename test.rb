#!/usr/bin/env ruby

$LOAD_PATH.unshift File.expand_path(File.dirname(__FILE__))

require "treetop"
require "ksp_config_node"
require "ast"
require "pp"

def parse(string)
  parser = KspConfigNodeParser.new
  root = parser.parse(string)
  pp root
#  pp clean_tree(root)
end

def clean_tree(root)
  return if root.elements.nil?
  root.elements.each { |node| puts node.class }
  root.elements.delete_if { |node| node.class.name == "Treetop::Runtime::SyntaxNode" }
  root.elements.each { |node| clean_tree(node) }
end

if ARGV.length > 0
  ARGV.each do |filename|
    parse(IO.read(filename))
  end
else
  parse(STDIN.read)
end
