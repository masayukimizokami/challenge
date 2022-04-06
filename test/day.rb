require "date"
day = Date.new(2022, 03, 1).wday
days = ["日曜日", "月曜日", "火曜日", "水曜日", "木曜日", "金曜日", "土曜日"]
puts "3月1日は#{days[day]}です"

for i in 1..31
    if i%7==1
     puts "3月#{i}日,#{days[2]}"
    elsif i%7==2
     puts "3月#{i}日,#{days[3]}"
    elsif i%7==3
        puts "3月#{i}日,#{days[4]}"
    elsif i%7==4
        puts "3月#{i}日,#{days[5]}"
    elsif i%7==5
        puts "3月#{i}日,#{days[6]}"
    elsif i%7==6
        puts "3月#{i}日,#{days[0]}"
    else
        puts "3月#{i}日,#{days[1]}"
    end

end

