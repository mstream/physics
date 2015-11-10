Feature: Normalization

  Scenario: Normalize zero vector

    Given vector 'a' is a zero vector
    Then normalized vector 'a' should be [0, 0]


  Scenario: Normalize unit vector

    Given vector 'a' is [0, 1]
    Then normalized vector 'a' should be [0, 1]


  Scenario: Normalize non-zero, non-unit vector

    Given vector 'a' is [0, 2]
    Then normalized vector 'a' should be [0, 1]

