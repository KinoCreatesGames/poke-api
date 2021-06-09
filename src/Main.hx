function main() {
	trace('Testing PokeAPI');
	var pokedex = new Pokedex();

	pokedex.getMachineById(3).handle((machine) -> {
		trace(machine);
	});
	trace(pokedex);
}