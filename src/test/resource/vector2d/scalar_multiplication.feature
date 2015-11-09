Feature: Scalar multiplication

  Scenario: Product of multiplication zero vector and zero

    Given Vector 'a' is a zero vector
    Then Product of vector 'a' and 0 should be [0, 0]


  Scenario: Product of multiplication zero vector and non-zero scalar

    Given Vector 'a' is a zero vector
    Then Product of vector 'a' and 2 should be [0, 0]


  Scenario: Product of multiplication non-zero vector and zero

    Given Vector 'a' is [3, 4]
    Then Product of vector 'a' and 0 should be [0, 0]


  Scenario: Product of multiplication non-zero vector and non-zero scalar

    Given Vector 'a' is [3, 4]
    Then Product of vector 'a' and 2 should be [6, 8]
