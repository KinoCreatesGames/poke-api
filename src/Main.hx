function main() {
	trace('Testing PokeAPI');
	var Pokedex = new Pokedex();
	Pokedex.getMachineById(3).handle((machine) -> {
		trace(machine);
	});
}