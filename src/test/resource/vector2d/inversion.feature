Feature: Inversion

  Scenario: Inversion of zero vector

    Given vector 'a' is a zero vector
    Then inversion of vector 'a' should be [0, 0]


  Scenario: Inversion of non-zero vector

    Given vector 'a' is [3, 4]
    Then inversion of vector 'a' should be [-3, -4]


  Scenario: Inversion of non-zero vector with negative coordinates

    Given vector 'a' is [-3, -4]
    Then inversion of vector 'a' should be [3, 4]
