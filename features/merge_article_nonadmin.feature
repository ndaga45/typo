Feature: Merge Articles
	As a blog administrator
	In order to prevent redundant blog posts
	I want to be able to merge two different articles on my blog

	Background:
		Given the blog is set up
		And I am logged into the admin panel
		And I create a new user
		And I log out
		And I sign in as a new user

    	Given I am on the new article page
    	When I fill in "article_title" with "Foobar"
    	And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
    	And I press "Publish"

    Scenario:
    	Given I am on the admin content page
    	And I follow "Edit"
    	Then I should not see "Merge Articles"
