# advent-calender
count the days till christmas!

## Requirements

* A running version of *Ruby*
* A running version of *Ruby on Rails*

## Installation
1. Get the app

        git clone https://github.com/nicolas-heinig/advent-calendar.git
        
2. Install gems

        bundle

3. Select images that should hide behind your 'doors' and save them here as *.png*:

        app/assets/private/

3. Build your Images and doors!

        rake build:images
        rake build:doors
