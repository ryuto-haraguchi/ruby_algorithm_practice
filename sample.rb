
# input_line = gets.chomp
# n = input_line.to_i
# arr = []
# start = 0
# result = 0
# while start < n do 
#   num = gets.chomp.to_i
#   arr.push(num)
#   start += 1
# end

# arr.each do |num| 
#   result += num
# end

# puts result

# 1/10　①
# input_line = gets.chomp.split(" ")
# reserved_seat_number = input_line[0].to_i
# seat_rows = input_line[1].to_i
# seat_cols = input_line[2].to_i
# best_seat = { p: input_line[3].to_i, q: input_line[4].to_i }
# start_number = 0
# seats = {}
# free_seats = {}
# reserved_seats = {}
# best_distance_seats = []

# (0...seat_rows).each do |seat_row|
#   (0...seat_cols).each do |seat_col|
#     seat_key = "seat#{seat_row}_#{seat_col}".to_sym
#     seats[seat_key] = { p: seat_row, q: seat_col, manhattan_distance: nil }
#   end
# end

# while start_number < reserved_seat_number do
#   reserved_seat_input = gets.chomp.split(" ")
#   seat_key = "seat#{reserved_seat_input[0].to_i}_#{reserved_seat_input[1].to_i}".to_sym
#   reserved_seats[seat_key] = { p: reserved_seat_input[0].to_i, q: reserved_seat_input[1].to_i }
#   start_number += 1
# end

# seats.each do |key, value|
#   unless reserved_seats.key?(key)
#     free_seats[key] = [value]
#   end
# end

# free_seats.each do |key, value_array|
#   value = value_array[0]
#   value[:manhattan_distance] = ( best_seat[:p] - value[:p] ).abs + ( best_seat[:q] - value[:q] ).abs
# end

# min_manhattan_distance = free_seats.values.map { |value_array| value_array[0][:manhattan_distance] }.min

# free_seats.each do |key, value_array|
#   value = value_array[0]
#   if value[:manhattan_distance] == min_manhattan_distance
#     puts "#{value[:p]} #{value[:q]}"
#   end
# end
# 1/10　②
# class Employee
#   attr_reader :number, :name

#   # 初期化メソッドで社員番号と名前を登録
#   def initialize(number, name)
#     @number = number
#     @name = name
#   end

#   # メンバ関数：社員番号を返す
#   def getnum
#     @number
#   end

#   # メンバ関数：名前を返す
#   def getname
#     @name
#   end
# end

# # 入力を取得
# n = gets.chomp.to_i
# employees = []

# # 各行の入力処理
# n.times do
#   input = gets.chomp.split
#   command = input[0]

#   case command
#   when "make"
#     # 新しい社員を作成しリストに追加
#     number = input[1].to_i
#     name = input[2]
#     employees << Employee.new(number, name)
#   when "getnum"
#     # 指定された社員の番号を取得
#     index = input[1].to_i - 1
#     puts employees[index].getnum
#   when "getname"
#     # 指定された社員の名前を取得
#     index = input[1].to_i - 1
#     puts employees[index].getname
#   end
# end
