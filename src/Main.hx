function main() {
	trace('Testing PokeAPI');
	var pokedex = new Pokedex();

	pokedex.getPokemonByName('pikachu').then((value) -> {
		trace(value.name);
	});
	pokedex.getAbilityByName('stench').then((value) -> {
		trace(value.names);
	});
}