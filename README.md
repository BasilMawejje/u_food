# Ufoods app
August 2017 Craft Academy Course Project

We created an app which allows users to order a food in a various restaurants nearby.
You sign up by creating an account with an email and password.
After logging in you will be allowed to choose a restaurant and order food with delivery.
A user sees restaurants within their proximity which they can choose by category e.g Thai, Mexican, etc.

## Getting Started
Change the current working directory to the location where you want the cloned directory to be made.

```
$ git clone https://github.com/CraftAcademy/ufoods
```

## Prerequisites
- ruby 2.4.0
- ruby rails 5.1.4

### Installing
Ensure that the gem versions on your local machine are as specified in the Gemfile.
Run bundle install to install dependencies.

## Running the tests
Run rake to see all the tests pass.  

### For acceptance test we use Cucumber.
It runs automated acceptance tests written in a behavior-driven development (BDD) style. Central to the Cucumber BDD approach is its plain language parser called Gherkin. It allows expected software behaviors to be specified in a logical language that customers can understand.  

Cucumber example:
```
Feature: user can see dishes and their info
  As a user
  In order to get food
  I would like to see a list of dishes and info about them

  Background:
    Given the following dishes exists
      | name           | description           | price  |  pic_url                | restaurant | category |
      | Sushi rolls    | Tasty Japanese food   | 10     |  https://goo.gl/fH7P5F  | Ai         | Main     |

  Scenario: user can view dish names
    Given I visit the dish page
    Then I should see the text "Sushi rolls"
    And I should see the text "Tasty Japanese food"
    And I should see the text "10"
    And I should see the picture "https://goo.gl/fH7P5F"
    And I should see the text "Ai"
    And I should see the text "Main"
```
### For unit tests we use Rspec
It is a behavior-driven development (BDD) framework which is extensively used in the production applications. The basic idea behind this concept is that of Test Driven Development(TDD) where the tests are written first and the development is based on writing just enough code that will fulfill those tests followed by refactoring.  

Rspec example:
```
RSpec.describe Dish, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_db_column :description }
    it { is_expected.to have_db_column :price }
    it { is_expected.to have_db_column :pic_url }
    it { is_expected.to have_db_column :restaurant }
    it { is_expected.to have_db_column :category }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :name }
    it { is_expected.to validate_presence_of :description }
    it { is_expected.to validate_presence_of :price }
    it { is_expected.to validate_presence_of :pic_url }
    it { is_expected.to validate_presence_of :restaurant }
    it { is_expected.to validate_presence_of :category }
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryGirl.create(:dish)).to be_valid
    end
  end
end
```


## Deployment
We automatically deploy this app with [Heroku](https://www.heroku.com/).

## Built With
* [Rails](https://github.com/rails/rails)
* [Acts_as_a_shopping_cart](https://github.com/crowdint/acts_as_shopping_cart)

## Authors
* [BasilMawejje](https://github.com/BasilMawejje)
* [Magnus-thor](https://github.com/magnus-thor)
* [NurlanEmir](https://github.com/nurlanemir)
* [Olofvi](https://github.com/olofvi)
* [Sajaas](https://github.com/Sajaas)

### License
MIT license

### Acknowledgments
Built with help from the coaches and some cool gems. Thanks a lot! Coaches:
* [Tochman](https://github.com/tochman)
* [Diraoulo](https://github.com/diraulo)
* [Faraznaeem](https://github.com/faraznaeem)
