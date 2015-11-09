Feature: Inversion

  Scenario: Inversion of zero vector

    Given Vector 'a' is a zero vector
    Then Inversion of vector 'a' should be [0, 0]


  Scenario: Inversion of non-zero vector

    Given Vector 'a' is [3, 4]
    Then Inversion of vector 'a' should be [-3, -4]


  Scenario: Inversion of non-zero vector with negative coordinates

    Given Vector 'a' is [-3, -4]
    Then Inversion of vector 'a' should be [3, 4]
