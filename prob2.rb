def parse_invoices(invoice_data)
  invoice_data.each_line do |i|
    inv_data = i.match(/(\d{4}\-\d{1,2}\-\d{1,2}) - (INV\d{3}) - (([a-zA-Z](\s*)\d{0})+) - (\$\d*)/)
    puts "Date: #{inv_data[1]}, Invoice Number: #{inv_data[2]}, Client: #{inv_data[3]}, Amount: #{inv_data[6]}"
  end
end

invoice_entries = <<-INVOICES
2023-03-01 - INV001 - Acme Corp - $1000
2023-03-02 - INV002 - Beta LLC - $2050
2023-03-03 - INV003 - Gamma Inc - $3500
INVOICES

parse_invoices(invoice_entries)
