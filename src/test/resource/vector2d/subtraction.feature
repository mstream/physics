Feature: Subtraction

  Scenario: Difference of two zero vectors

    Given Vector 'a' is a zero vector
    Given Vector 'b' is a zero vector
    Then Difference of vectors 'a' and 'b' should be [0, 0]


  Scenario: Difference of non-zero and zero vector

    Given Vector 'a' is [3, 4]
    Given Vector 'b' is a zero vector
    Then Difference of vectors 'a' and 'b' should be [3, 4]


  Scenario: Difference of zero and non-zero vector

    Given Vector 'a' is a zero vector
    Given Vector 'b' is [3, 4]
    Then Difference of vectors 'a' and 'b' should be [-3, -4]


  Scenario: Difference of non-zero vectors

    Given Vector 'a' is [1, 2]
    Given Vector 'b' is [3, 4]
    Then Difference of vectors 'a' and 'b' should be [-2, -2]

