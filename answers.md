# Q0: Why is this error being thrown?
There's no pokemon model and controller.

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
We are using the seed.rb to create these pokemon. They all have a name, level, and no trainer yet.

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
button_to is used because it is modifying a row in a table. capture_path uses the capture route in route.rb and uses the capture mature which passes in the pokemon id into the params
variable

# Question 3: What would you name your own Pokemon?
GottaCatchThemAll

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in /trainer/ + the current_trainer id

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
The line goes to application.html.erb and at the end, there's a line that directs it to message.html.erb where it displays the error message.

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app

https://github.com/scsmncao/proj1
