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
		Given I am on the admin content page
		And I follow "Edit"
		When I fill in "merge_with" with "4"
		And I press "Merge"

	Scenario:
		Given I am on the admin content page
		Then I should see "Foobar"
		But I should not see "Barfoo"

	Scenario:
		Given I am on the admin content page
		Then I should see "admin"

	Scenario:
		Given I am on the admin content page
		And I follow "Show"
		Then I should see "Lorem Ipsum"
		And I should see "Dolor sit amet"
