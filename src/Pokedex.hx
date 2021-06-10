import Structs;
import js.lib.Promise;
import Structs.PokedexOptions;

@:jsRequire('pokedex-promise-v2')
@:native('Pokedex')
extern class Pokedex {
	public function new(?options:PokedexOptions);

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
	public function getMachineById(id:Int):Promise<Machine>;
	public function getMoveByName(name:String):Promise<Move>;
	public function getMoveAilmentByName(name:String):Promise<MoveAilment>;
	public function getMoveBattleStyleByName(name:String):Promise<MoveStyle>;
	public function getMoveCategoryByName(name:String):Promise<MoveCategory>;
	public function getMoveDamageClassByName(name:String):Promise<MoveDamage>;
	public function getMoveLearnMethodByName(name:String):Promise<MoveLearnMethod>;
	public function getMoveTargetByName(name:String):Promise<MoveTarget>;
	public function getContestTypeByName(name:String):Promise<Contest>;
	public function getContestEffectById(id:Int):Promise<ContestEffects>;
	public function getPokedexByName(name:String):Promise<Dynamic>;
	// public function getLocationByName(name:String):Promise<>;
}