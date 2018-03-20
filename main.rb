require 'terminal-table'
require 'CSV'

def load_shuffle
    names = CSV.open('names.csv').read.shuffle
    shuffled_names =[]
    names.each_with_index do |name, index|
        shuffled_names.push(name.join.strip)
    end
    return shuffled_names
end

def unshuffled_list
    list = CSV.open('names.csv').read
    amount_of_people = list.length
    return "#{list.join("\n")}\n\nThere are #{amount_of_people} in this list." 
end

def create_groups(group_size)
    groups = load_shuffle.clone.each_slice(group_size).to_a
    if groups[-1].length == group_size
        return groups
    else 
        outliers = groups.pop
        outliers.each_with_index do |name, index|
            groups[index].push(outliers[index])
        end
        return groups
    end
end

def display_groups(group_size)
    rows = []
    table = Terminal::Table.new :headings => ['Group #', 'People'], :rows => rows
    create_groups(group_size).each_with_index do |group, index|
        table.add_separator
        table.add_row [index + 1, "#{group.join(", ")}"]
    end
    return table
end

def main_menu
    while true
        puts """
        1. View List
        2. Generate groups
        3. Exit
        """
        case gets.strip
        when "1"
            puts unshuffled_list
        when "2"
            puts "Specify how big your groups will be."
            user_input = gets.chomp.to_i
            puts display_groups(user_input)
        when "3"
            puts "Thank you for using this application!"
            return false
        end
    end
end

main_menu