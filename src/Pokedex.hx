import Structs.PokemonListData;
import Structs.PokemonSpeciesData;
import Structs.PokemonData;
import js.lib.Promise;
import Structs.PokedexOptions;

@:jsRequire('pokedex-promise-v2')
@:native('Pokedex')
extern class Pokedex {
	public function new(options:PokedexOptions);

	public function getPokemonByName(name:String):Promise<PokemonData>;
	public function getPokemonSpeciesByName(species:String):Promise<PokemonSpeciesData>;
	public function getPokemonsList():Promise<PokemonListData>;
}