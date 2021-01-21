require_relative("linked-list.rb")

list = LinkedList.new

rand(200).times do list.append(rand(128)) end
list.to_s
list.head
list.tail
rand(10).times do list.find(rand(128)) end
rand(10).times do list.contains?(rand(128)) end
rand(10).times do list.at(rand(128)) end
rand(10).times do list.pop end
rand(10).times do list.prepend(rand(128)) end
list.to_s
list.head
list.tail