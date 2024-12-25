local M = {}

-- Sample list of programming quotes
M.quotes = {
    -- Programming Craft
    "Talk is cheap. Show me the code. - Linus Torvalds",
    "Code never lies, comments sometimes do. - Ron Jeffries",
    "Any fool can write code that a computer can understand. Good programmers write code that humans can understand. - Martin Fowler",
    "First, solve the problem. Then, write the code. - John Johnson",
    "Code is like humor. When you have to explain it, it's bad. - Cory House",
    "Make it work, make it right, make it fast. - Kent Beck",
    "Clean code always looks like it was written by someone who cares. - Robert C. Martin",
    
    "Simplicity is prerequisite for reliability. - Edsger W. Dijkstra",
    "Programming is learned by writing programs. - Brian Kernighan",
    "The most disastrous thing that you can ever learn is your first programming language. - Alan Kay",
    "Controlling complexity is the essence of computer programming. - Brian Kernighan",
    "The function of good software is to make the complex appear to be simple. - Grady Booch",
    
    -- Programming Humor
    "It's not a bug; it's an undocumented feature. - Anonymous",
    "Programming is like sex: one mistake and you have to support it for the rest of your life. - Michael Sinz",
    "There are only two kinds of languages: the ones people complain about and the ones nobody uses. - Bjarne Stroustrup",
    "Always code as if the guy who ends up maintaining your code will be a violent psychopath who knows where you live. - John Woods",
    
    -- Programming Philosophy
    "Programs must be written for people to read, and only incidentally for machines to execute. - Harold Abelson",
    "Sometimes it pays to stay in bed on Monday rather than spending the rest of the week debugging Monday's code. - Dan Salomon",
    "The best error message is the one that never shows up. - Thomas Fuchs",
    "Given enough eyeballs, all bugs are shallow. - Linus Torvalds",
    "Measuring programming progress by lines of code is like measuring aircraft building progress by weight. - Bill Gates"
}

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
function splitIntoLines(inputString)
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
    require("notify")(splitIntoLines(quote),"info",  {
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

