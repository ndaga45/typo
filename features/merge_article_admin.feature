Feature: Merge Articles
	As a blog administrator
	In order to prevent redundant blog posts
	I want to be able to merge two different articles on my blog

	Background:
		Given the blog is set up
		And I am logged into the admin panel
		When I am on the new article page
		When I fill in "article_title" with "Foobar"
		And I fill in "article__body_and_extended_editor" with "Lorem Ipsum"
		And I press "Publish"
		When I go to the new article page
		When I fill in "article_title" with "Barfoo"
		And I fill in "article__body_and_extended_editor" with "Dolor sit amet"
		And I press "Publish"


	Scenario:
		Given I am on the admin content page
		And I follow "Edit"
		Then I should see "Merge Articles"
		And I should see "Article ID:"

	Scenario:
		Given I am on the admin content page
		And I follow "Edit"
		When I fill in "merge_with" with "4"
		And I press "Merge"
		Then I should be on the admin content page
		And I should see "Article was sucessfully created."