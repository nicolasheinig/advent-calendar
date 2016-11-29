# advent-calender
count the days till christmas!

## Requirements

* A running version of *Ruby*
* A running version of *Ruby on Rails*

## Installation
1. Get the app

        git clone https://github.com/nicolas-heinig/advent-calendar.git
        
2. Install gems + setup database

        bundle
	rake db:migrate

3. Set user credentials in 

        config/settings.yml

4. Select images that should hide behind your 'doors' and save them here as *.png*:

        app/assets/private/

5. Build your Images and doors!

        rake build:images
        rake build:doors
