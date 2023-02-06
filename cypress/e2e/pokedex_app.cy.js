/* eslint-disable no-undef */
describe('Pokedex', () => {
  it('front page can be opened', () => {
    cy.visit('http://localhost:5000')
    cy.contains('ivysaur')
    cy.contains('Pokémon and Pokémon character names are trademarks of Nintendo.')
  }),
  it('pokemon page can be navigated to', () => {
    cy.visit('http://localhost:5000')
    cy.request('GET', 'https://pokeapi.co/api/v2/pokemon/ivysaur')
    cy.visit('http://localhost:5000/pokemon/ivysaur')
    cy.contains('chlorophyll')

  })
})