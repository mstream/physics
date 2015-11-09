Feature: Subtraction

  Scenario: Difference of two zero vectors

    Given vector 'a' is a zero vector
    Given vector 'b' is a zero vector
    Then difference of vectors 'a' and 'b' should be [0, 0]


  Scenario: Difference of non-zero and zero vector

    Given vector 'a' is [3, 4]
    Given vector 'b' is a zero vector
    Then difference of vectors 'a' and 'b' should be [3, 4]


  Scenario: Difference of zero and non-zero vector

    Given vector 'a' is a zero vector
    Given vector 'b' is [3, 4]
    Then difference of vectors 'a' and 'b' should be [-3, -4]


  Scenario: Difference of non-zero vectors

    Given vector 'a' is [1, 2]
    Given vector 'b' is [3, 4]
    Then difference of vectors 'a' and 'b' should be [-2, -2]

