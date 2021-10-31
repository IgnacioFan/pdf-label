require_relative "test_helper"

describe "PdfLabel" do
  it "can create a pdf with hello world" do
    PdfLabel.generate('test', page_size: [101.6, 152.4], margin: [0, 0, 0, 0]) do |label|
      label.text "hello world!!!!"
      label.text "test!!!!"
      label.text "I am Weilong!!!!"
    end
  end
end
