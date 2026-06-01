###
#
#  Sort arguments passed to the program
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i = arg.to_i
    
    # insert in right place
    is_inserted = false
    i_arg = 0
    l = result.size
    while !is_inserted && i_arg < l do
        if result[i_arg] < i
            i_arg += 1
        else
            result.insert(i_arg, i)
            is_inserted = true
        end
    end
    result << i if !is_inserted
end

puts result