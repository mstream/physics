Feature: Addition

  Scenario: Sum of two zero vectors

    Given Vector 'a' is a zero vector
    Given Vector 'b' is a zero vector
    Then Sum of vectors 'a' and 'b' should be [0, 0]


  Scenario: Sum of zero and non-zero vector

    Given Vector 'a' is a zero vector
    Given Vector 'b' is [3, 4]
    Then Sum of vectors 'a' and 'b' should be [3, 4]


  Scenario: Sum of non-zero vectors

    Given Vector 'a' is [1, 2]
    Given Vector 'b' is [3, 4]
    Then Sum of vectors 'a' and 'b' should be [4, 6]

