# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


data = Roo::Spreadsheet.open('security_data.xls')
company_lookup = Hash[data.sheet(data.sheets[2]).column('A').zip data.sheet(data.sheets[2]).column('B')]
data.each_with_pagename do |name, sheet|
  if name =~ /Data(?! Summary)/
    # create security
    company = Security.create(name: sheet.row(9).at(1).strip)
    # add long term debt
    company.long_term_debt = sheet.row(13).at(6)
    # ticker
    company.ticker = company_lookup[company.name]
    # find years
    years = sheet.row(15)[1..11]
    # create years
    years.map! { |yr| Year.find_or_create_by(year: yr.floor.to_s) }
    # create financial statistics for each year
    years.each_with_index do |yr, i|
      yr.average_annual_price_to_earnings_ratios.create(pe: sheet.row(19)[i+1]) do |ratio|
        ratio.security = company
      end
      yr.equity_values.create(equity_value: sheet.row(20)[i+1]) do |values|
        values.security = company
      end
      yr.dividends_paid_outs.create(dividends_paid_out: sheet.row(21)[i+1]) do |dividends|
        dividends.security = company
      end
      yr.net_earnings.create(net_earnings: sheet.row(22)[i+1]) do |earnings|
        earnings.security = company
      end
      yr.shares_outstanding.create(shares_outstanding: sheet.row(23)[i+1]) do |shares|
        shares.security = company
      end
    end
    break
  end
end
