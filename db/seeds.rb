# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
data = Roo::Spreadsheet.open('security_data.xls')
data.each_with_pagename do |name, sheet|
  if name =~ /Data(?! Summary)/
    # create company
    company = Security.create(name: sheet.row(9).at(1).strip,
      ticker: name.split(' ',2)[0],
      long_term_debt: sheet.row(13).at(6))
    # find years
    years = sheet.row(15)[1..11]
    # create years
    years.map! { |yr| Year.find_or_create_by(year: yr.floor.to_s) }
    # create financial statistics for each year
    years.each_with_index do |yr, i|
      yr.performances.create(
        pe: sheet.row(19)[i+1],
        equity_value: sheet.row(20)[i+1],
        dividends_paid_out: sheet.row(21)[i+1],
        net_earnings: sheet.row(22)[i+1],
        shares_outstanding: sheet.row(23)[i+1]
      ) do |performance|
        performance.security = company
      end
    end
    puts "-"*80
    puts company.name
    puts company.ticker
    puts company.long_term_debt
  end
end
