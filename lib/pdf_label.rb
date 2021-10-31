# frozen_string_literal: true
require 'prawn'
require "pdf_label/text"

module PdfLabel
  # class Error < StandardError; end
  class << self
    attr_accessor :pdf

    def generate(file_name, options = {}, &block)
      # raise "page_size error" if !page_size.is_a?(Array) || page_size.size != 2
      # raise "margin error" if !margin.is_a?(Array) || margin.size != 4
      file_name = "#{file_name}.pdf"
      @pdf = Prawn::Document.new

      puts options

      if block
        puts "block given"
        # @pdf.instance_eval(&block)
        block.call(self)
      end

      @pdf.render_file(file_name)
    end
  end
end
