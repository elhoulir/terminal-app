# Terminal App

## How to use:
    Run "bundle install" in terminal
    Run "ruby main.rb"

### What is it?    
    The purpose of the app is to allow the user to assort a list of names into different groups.

    We chose to use the built in CSV module since we wanted to easily import a list of names.
    
    For example, if you have a list of 20 names and you want to assign them all into groups of 5, you just enter '5' when prompted, and the app will auto-assign 4 groups of 5 (4 * 5 = 20) and this will work with any list size. Each time you run the app, it will assign the names into different groups, it will never be the same. 

  
### The problems we encountered:
    
    Our first problem was that 'nil' was showing on one of the arrays, when we chose groups of 3. After playing around with the code we solved this issue. 

    The next problem we had was getting the values in the array to spread evenly. For example, if we wanted to have a max of 10 people per group and we had 103 people, we couldnt get it to spread evenly, where each array would have 10 or less people, instead we had 3 groups of 11 and 7 people groups of 10 people, rather than having 7 groups of 10 people and 3 groups of 9 people (this is ideal as it would not exceed our maxiumum of 10 people). We still haven't solved this, and will work to fix it after the presentation. 

