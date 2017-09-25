require 'date'
# A hash of all house prices and transactions
# Data from the Land Registry and transformed through Postcodes.io
def print_houses

    houses = {
      ["Basingstoke and Deane", "Tadley South"]=>
      {:count=>1,
       :average=>94000,
       :transactions=>
        [[94000,
          "RG26 3UR",
          Date.parse("1995-09-01")]]},
     ["Camden", "Cantelowes"]=>
      {:count=>1,
       :average=>215000,
       :transactions=>
        [[215000,
          "NW1 9UB",
          Date.parse("1995-03-10")]]},
     ["Conwy", "Capelulo"]=>
      {:count=>1,
       :average=>40000,
       :transactions=>
        [[40000,
          "LL34 6RW",
          Date.parse("1995-03-24")]]},
     ["Luton", "Leagrave"]=>
      {:count=>1,
       :average=>30500,
       :transactions=>
        [[30500, "LU4 9JG", Date.parse("1995-11-30")]]},
     ["Melton", "Asfordby"]=>
      {:count=>1,
       :average=>37500,
       :transactions=>
        [[37500,
          "LE14 3YP",
          Date.parse("1995-08-31")]]},
     ["Sheffield", "Beighton"]=>
      {:count=>1,
       :average=>41950,
       :transactions=>
        [[41950, "S20 2QW", Date.parse("1995-06-30")]]},
     ["Stratford-on-Avon", "Wellesbourne East"]=>
      {:count=>1,
       :average=>70500,
       :transactions=>
        [[70500,
          "CV35 9RZ",
          Date.parse("1995-03-24")]]},
     ["Sunderland", "Millfield"]=>
      {:count=>1,
       :average=>26000,
       :transactions=>
        [[26000, "SR4 7DY", Date.parse("1995-12-18")]]},
     ["Taunton Deane", "Bishop's Lydeard"]=>
      {:count=>1,
       :average=>51500,
       :transactions=>
        [[51500, "TA4 3NJ", Date.parse("1995-02-24")]]},
     ["Test Valley", "St Mary's"]=>
      {:count=>1,
       :average=>60000,
       :transactions=>
        [[60000,
          "SP10 1JG",
          Date.parse("1995-06-23")]]}
        }

  puts "What location would you like to search in? (Or press enter for full list)"
  place = gets.chomp.capitalize
  houses.each do |location, data|
    if !place.nil?
      if !location[0].include?(place) && !location[1].include?(place)
        next
      end
    end

    date_arr = data[:transactions][0][2].to_s.split("-")

    months = [
      "January", "February",
      "March", "April", "May",
      "June", "July", "August",
      "September", "October",
      "November", "December"
    ]

    date = date_arr[2].to_s
    case date_arr[2][1]
    when '1'
      date << "st of "
    when '2'
      date << "nd of "
    when '3'
      date << "rd of "
    else
      date << "th of "
    end

    date = date[1..-1] if date_arr[2][0] == "0"

    date << months[date[1].to_i + 1] + ', ' + date_arr[0] + '.'

    price = data[:average].to_s
    if price.length > 3
      price = price.chars.reverse.each_slice(3).map(&:join).join(",").reverse
    end

    puts "A house was sold in #{location[0]}, #{location[1]} for £#{price} on the #{date}"
  end
end

print_houses
