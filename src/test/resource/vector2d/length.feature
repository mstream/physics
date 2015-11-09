Feature: Length

  Scenario: Length of zero vector

    Given Vector 'a' is a zero vector
    Then Length of vector 'a' should be 0


  Scenario: Length of non-zero vector

    Given Vector 'a' is [3, 4]
    Then Length of vector 'a' should be 5


  Scenario: Length of non-zero vector with negative coordinates

    Given Vector 'a' is [-3, -4]
    Then Length of vector 'a' should be 5
