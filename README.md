# Creating Profiles for user 
## 28/09/2017

### rails g scaffold Profile user:references username name bio:text

1. routes.rb : place 'resources :profiles' line under users
2. migrate file: write 't.index :username, unique:true'

### rails db:migrate

3. routes.rb : change recources to recourse and profiles to profile for profile as there is only 1 profile for each user.
4. profiles.controller : def show : redirect_to edit_profile_url if @profile.nil?
                       : def set profile : @profile = Profile.find_by(user: current_user)
                       : def edit : @profile = Profile.find_or_initialize_by(user: current_user)
5. _form.html.erb : url: profile_url
                  : delete user id section from form
6. edit.html.erb : back : profile_path, delete show button
7. 






