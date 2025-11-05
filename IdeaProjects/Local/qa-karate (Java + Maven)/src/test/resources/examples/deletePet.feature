Feature: Eliminar una mascota existente

  Background:
    * url baseUrl
    * def petId = 123456

  Scenario: Eliminar una mascota correctamente
    Given path '/pet', petId
    When method delete
    Then status 200
    And match response.message == petId.toString()
