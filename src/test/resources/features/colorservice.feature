Feature:
  Scenario: POST and GET
    When I make a POST call to "color/green" endpoint with post body:
    """
    """
    Then response status code should be 204
    And response should be empty

  Scenario: GET
    When I make a GET call to "color" endpoint
    Then response content type should be "application/octet-stream"
    And response status code should be 200
    And response should be:
    """
    green
    """

  Scenario: GET
    When I make a GET call to "color/object" endpoint
    Then response content type should be "application/json"
    And response status code should be 200
    And response should be json:
    """
    {
      "color": {
        "name": "orange",
        "r": 231,
        "g": 113,
        "b": 0
      }
    }
    """
