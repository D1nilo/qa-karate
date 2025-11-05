Feature: Crear una nueva mascota en la tienda

  Background:
    * url baseUrl
    * def petBody =
      """
      {
        "id": 123456,
        "category": { "id": 1, "name": "dog" },
        "name": "Rocky",
        "photoUrls": ["https://example.com/dog.jpg"],
        "tags": [{ "id": 1, "name": "friendly" }],
        "status": "available"
      }
      """

  Scenario: Crear una mascota correctamente
    Given path '/pet'
    And request petBody
    When method post
    Then status 200
    And match response.name == 'Rocky'
    And match response.status == 'available'
