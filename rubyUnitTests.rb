class TestUser < Test::Unit::TestCase

  def test_submit
	#try to login using entered userId and password
    
  end

  def test_verifyLogin
	#check if password is correct for given userId
	
end

class TestAdministrator < Test::Unit::TestCase

  def test_deleteUser
	#deletes a user (student or moderator)
	
  end
  
  def test_addUser
	#adds a user (student or moderator)
	
  end

  def test_verifyVendor
	#checks wheter or not a vendor can be on the website
  
  end

  def test_changeRole
    #changes what a moderator is in charge of
	
  end
  
  def test_approve
    #approve a post
  
  end
  
  def test_suspend
	#suspend a student for x amount of time
	
  end
  
  def test_createTeam
	#create team of users
	
  end
  
  def test_addStudent
	#adds a student to a team
  end
  
  def test_setSchedule
	#set schedule
	
  end
  
  def test_confirmAttendance
	#return student participation (schedule, posts, etc)
	
  end
  
  def test_editPost
    #successfully changes student post
	
  end
end

class TestModerator < Test::Unit::TestCase
	
	def test_approve
		#approve a post
		#deny a post
	end
	
	def test_suspend
		#suspend a user for x amount of time
		#suspend user indefinitely
	end
	
	def test_createTeam 
		#creates team of users
	end
	
	def test_addStudent
		#adds student to a team
	end
	
	def test_setSchedule
		#set schedule
	end
	
	def test_confirmAttendance
		#confirms student attendance
	end
	
	def test_viewStudentParticipation
		#return student participation
	end
	
	def test_editPost
		#successfully changes student post
	end

end


class TestStudent < Test::Unit::TestCase

	def test_viewInfo
		#returns student account info
	end
	
	def test_editProfile
		#successfully edit name, email, username, profile picture etc.
	end
	
	def test_createPost
		#creates a text post
		#creates an image/video post
	end
	
	def test_linkSocialMedia
		#link to Twitter account
		#link to Facebook account
	end
	
	def test_createSchedule
		#creates a personal schedule
	end
	
	def test_postExercises
		#posts from a predefined list of excercises to profile
	end
	
	def test_deleteSchedule
		#delete a personal schedule
	end
		
	def test_editSchedule
		#change date on schedule
		#change activity on schedule
	end
	
end

class TestSystem < Test::Unit::TestCase

  def test_registerUser
    #register a user
  
  end
  
  def test_storeInfo
    #stores information
	
  end
  
  def test_trackAchievements
    #tracks students' achienvements
	
  end
  
  def test_authenticate
    #authenticates an account
	
  end
  
  def test_handleSubscriptions
    #manages students' subscriptions
	
  end
  
  def test_handleThirdPartServices
    #manages third part services
  
  end
  
  def test_verifyLogin
    #checks if the given password and userId are valid
  
  end
  
  def test_updateInfo
    #allows users to change their information
  
  end
  
 end
 
class TestAchievement < Test::Unit::TestCase
	
	def test_inProgress
		#return achievement progress (percent)
	end
	
	def test_complete
		#return badge to profile
		#close achievement in progress
	end
	
end

class TestWebApp < Test::Unit::TestCase
	
	def test_displayPost
		#show post
	end
	
	def test_displayMap
		#show map of local area
	end
	
	def test_displayUserList
		#show list of users
	end
	
	def test_displayThirdPartyServices
		#show locations on local map
	end
	
	def test_displayInfo
		#show info
	end
	
	def test_displayAchievements
		#show achievement progress
		#show completed achievement badge
	end
	
	def test_createAccount
		#create student account
		#create vendor account
		#create moderator account
	end
	
end