import Structs;
import js.lib.Promise;
import Structs.PokedexOptions;

@:jsRequire('pokedex-promise-v2')
@:native('Pokedex')
extern class Pokedex {
	public function new(options:PokedexOptions);

	public function getPokemonByName(name:String):Promise<Pokemon>;
	public function getPokemonSpeciesByName(species:String):Promise<PokemonSpecies>;
	public function getPokemonsList():Promise<PokemonList>;
	public function getBerryByName(berryName:String):Promise<Berry>;
	public function getBerryFirmnessByname(firmness:String):Promise<BerryFirmness>;
	public function getBerryFlavorByName(flavor:String):Promise<BerryFlavor>;
	public function getEncounterMethodByName(encounterMethod:String):Promise<EncounterMethods>;
	public function getEncounterConditionByName(condition:String):Promise<EncounterConditions>;
	public function getEncounterConditionValueByName(condVal:String):Promise<EncounterConditionValue>;
	public function getLanguageByName(lang:String):Promise<NameResource>;
}