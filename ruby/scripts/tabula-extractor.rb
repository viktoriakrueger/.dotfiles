require 'tabula'

pdf_file_path = "/Users/user/repositories/panel/Codebook_T22_9_Euro.pdf"
outfilename = "whatever2.csv"

out = open(outfilename, 'w')

extractor = Tabula::Extraction::ObjectExtractor.new(pdf_file_path, :all )
extractor.extract.each do |pdf_page|
  pdf_page.spreadsheets.each do |spreadsheet|
    out << spreadsheet.to_csv
    out << "\n\n"
  end
end
out.close
