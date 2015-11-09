Feature: Addition

  Scenario: Sum of two zero vectors

    Given vector 'a' is a zero vector
    Given vector 'b' is a zero vector
    Then sum of vectors 'a' and 'b' should be [0, 0]


  Scenario: Sum of zero and non-zero vector

    Given vector 'a' is a zero vector
    Given vector 'b' is [3, 4]
    Then sum of vectors 'a' and 'b' should be [3, 4]


  Scenario: Sum of non-zero vectors

    Given vector 'a' is [1, 2]
    Given vector 'b' is [3, 4]
    Then sum of vectors 'a' and 'b' should be [4, 6]

