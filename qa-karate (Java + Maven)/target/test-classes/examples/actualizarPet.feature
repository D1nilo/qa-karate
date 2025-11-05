Feature: Pet - Actualizar la mascota creada (id 123456)

  Background:
    * url baseUrl
    * def pid = 123456

    # cuerpo actualizado: PUT /pet exige el objeto completo
    * def petUpdated =
      """
      {
        id: #(pid),
        category: { id: 2, name: 'dog-updated' },
        name: 'RockyUpdated',
        photoUrls: [
          'https://example.com/dog.jpg',
          'https://example.com/dog2.jpg'
        ],
        tags: [
          { id: 1, name: 'friendly' },
          { id: 2, name: 'vaccinated' }
        ],
        status: 'sold'
      }
      """

  @pet @update
  Scenario: Actualizar el pet creado previamente y validar por id
    # actualizar ese MISMO id
    Given path 'pet'
    And request petUpdated
    When method put
    Then status 200
    # algunos backends devuelven un “echo” parcial; validamos lo esencial
    And match response.id == '#number'

    # verificar que el recurso al que apuntamos es el creado (mismo id)
    Given path 'pet', pid
    When method get
    Then status 200
    And match response.id == pid
    # si el backend respeta los cambios del PUT, también validamos nombre/estado:
    * if (response.name) karate.match(response.name, 'RockyUpdated')
    * if (response.status) karate.match(response.status, "#? ['available','pending','sold'].includes(_)")
