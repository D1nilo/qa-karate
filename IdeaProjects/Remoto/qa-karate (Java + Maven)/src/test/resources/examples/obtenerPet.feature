Feature: Pet - Obtener mascotas

  Background:
    * url baseUrl


  @pet @list @available
  Scenario: Obtener mascotas disponibles
    Given path 'pet', 'findByStatus'
    And param status = 'available'
    When method get
    Then status 200

  @pet @list @sold
  Scenario: Obtener mascotas vendidas
    Given path 'pet', 'findByStatus'
    And param status = 'sold'
    When method get
    Then status 200

  @pet @contract
  Scenario: Contrato mínimo de elementos devueltos
    Given path 'pet', 'findByStatus'
    And param status = 'available'
    When method get
    Then status 200
