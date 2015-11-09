Feature: Scalar multiplication

  Scenario: Product of multiplication zero vector and zero

    Given vector 'a' is a zero vector
    Then product of vector 'a' and 0 should be [0, 0]


  Scenario: Product of multiplication zero vector and non-zero scalar

    Given vector 'a' is a zero vector
    Then product of vector 'a' and 2 should be [0, 0]


  Scenario: Product of multiplication non-zero vector and zero

    Given vector 'a' is [3, 4]
    Then product of vector 'a' and 0 should be [0, 0]


  Scenario: Product of multiplication non-zero vector and non-zero scalar

    Given vector 'a' is [3, 4]
    Then product of vector 'a' and 2 should be [6, 8]
