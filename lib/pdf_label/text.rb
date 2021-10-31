module PdfLabel
  class << self
    def text(content)
      puts content
      pdf.text(content)
    end
  end
end
