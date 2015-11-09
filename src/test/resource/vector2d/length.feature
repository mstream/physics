Feature: Length

  Scenario: Length of zero vector

    Given vector 'a' is a zero vector
    Then length of vector 'a' should be 0


  Scenario: Length of non-zero vector

    Given vector 'a' is [3, 4]
    Then length of vector 'a' should be 5


  Scenario: Length of non-zero vector with negative coordinates

    Given vector 'a' is [-3, -4]
    Then length of vector 'a' should be 5
