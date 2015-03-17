Feature: Merge Articles
	As a blog administrator
	In order to prevent redundant blog posts
	I want to be able to merge two different articles on my blog

	Background:
		Given the blog is set up
		And I am logged into the admin panel

		When I am on the new article page
		And I write the article titled "Foobar" with the content "Lorem Ipsum"

		When I am on the home page
		And I follow "Foobar"
		And I comment "Great post!" as "Nitika Daga"

		When I am on the new article page
		And I write the article titled "Barfoo" with the content "Dolor sit amet"

		When I am on the home page
		And I follow "Barfoo"
		And I comment "A+!" as "Armando Fox"

		When I am on the admin content page
		And I follow "Edit"
		When I fill in "merge_with" with "4"
		And I press "Merge"

	Scenario:
		Given I am on the admin content page
		And I follow "Show"
		Then I should see "2 comments"
		And I should see "Nitika Daga"
		And I should see "Great post!"
		And I should see "Armando Fox"
		And I should see "A+!"
		