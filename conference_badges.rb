# Write your code here.

array_of_names=['sean', 'gimelle', 'arthur']

def badge_maker name
    "Hello, my name is #{name}."
end

def batch_badge_creator array_of_names
    array_of_names.collect {|name| badge_maker name}
end

def assign_rooms array_of_names
    room_assignments = []
    array_of_names.each.with_index(1) {|name, index| room_assignments << "Hello, #{name}! You'll be assigned to room #{index}!"}

    room_assignments.each {|room_assignment| puts room_assignment}
end 

def printer array_of_names
    batch_badge_creator array_of_names.each {|name| puts badge_maker name}
    assign_rooms array_of_names
end 