local M = {}

-- Sample list of programming quotes
M.quotes = {
    "Talk is cheap. Show me the code. - Linus Torvalds",
    "Programs must be written for people to read, and only incidentally for machines to execute. - Harold Abelson",
    "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live. - John Woods",
    "Any fool can write code that a computer can understand. Good programmers write code that humans can understand. - Martin Fowler",
    "First, solve the problem. Then, write the code. - John Johnson"
}

function addNewlineEveryFiveWords(inputStr)
    local words = {}
    -- Split the input string into words
    for word in inputStr:gmatch("%S+") do
        table.insert(words, word)
    end
    
    -- Insert newlines after every 5 words
    local result = {}
    for i, word in ipairs(words) do
        table.insert(result, word)
        -- After every 5 words, insert a newline, except at the end of the string
        if i % 5 == 0 and i ~= #words then
            table.insert(result, '\n')
        end
    end
    
    -- Join all parts into a single string and return
    return table.concat(result, " ")
end


function estimateReadingTime(inputString)
    -- Average reading speed in words per minute
    local wordsPerMinute = 200

    -- Count words in the string
    local words = 0
    for word in inputString:gmatch("%S+") do
        words = words + 1
    end

    -- Calculate reading time in minutes
    local readingTimeMinutes = words / wordsPerMinute

    -- Convert reading time to milliseconds
    local readingTimeMilliseconds = readingTimeMinutes * 60 * 1000

    return readingTimeMilliseconds
end


-- Function to split a string by space and batch the results
function processString(inputString)
    -- Split string by spaces into a list of words
    local words = {}
    for word in inputString:gmatch("%S+") do
        table.insert(words, word)
    end

    -- Function to batch words into groups of 5
    local function batchWords(wordList, batchSize)
        local batches = {}
        for i = 1, #wordList, batchSize do
            local batch = {}
            -- Collect up to batchSize words for each batch
            for j = i, math.min(i + batchSize - 1, #wordList) do
                table.insert(batch, wordList[j])
            end
            -- Join the words in the batch with a space and add to batches
            table.insert(batches, table.concat(batch, " "))
        end
        return batches
    end

    -- Create batches of 5 words
    local wordBatches = batchWords(words, 5)

    -- Join the batches with a newline
    return table.concat(wordBatches, "\n")
end


-- Function to display a random quote
function M.display_quote()
    local quote = M.quotes[math.random(#M.quotes)]
    require("notify")(processString(quote),"info",  {
    title = "Today's NeoQuote",
    timeout = estimateReadingTime(quote),
    render = "simple",
    icon = "💻",
  })
end

-- Random seed for randomness
math.randomseed(os.time())

-- Call the display function when the module is loaded
M.display_quote()

return M

