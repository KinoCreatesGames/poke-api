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
	public function getEvolutionChainById(id: Int):Promise<EvolutionChain>;
	public function getEvolutionTriggerByName(evolutionTrigger: String):Promise<EvolutionTrigger>;
	public function getVersionByName(version: String):Promise<Version>;
	public function getVersionGroupByName(versionGroup: String):Promise<VersionGroup>;
	public function getItemByName(item: String):Promise<Item>;
	public function getItemAttributeByName(itemAttribute: String):Promise<ItemAttribute>;
	public function getItemCategoryByName(itemCategory: String):Promise<ItemCategory>;
	public function getItemFlingEffectByName(itemFlingEffect: String):Promise<ItemFlingEffect>;
	public function getItemPocketByName(itemPocket: String):Promise<ItemPocket>;
	public function getLocationByName(location: String):Promise<Location>;
	public function getLocationAreaByName(locationArea: String):Promise<LocationArea>;
	public function getPalParkAreaByName(palParkArea: String):Promise<PalParkArea>;
	public function getRegionByName(region: String):Promise<Region>;
	public function getAbilityByName(ability: String):Promise<Ability>;
	public function getCharacteristicById(id: Int):Promise<Characteristic>;
	public function getEggGroupByName(eggGroup: String):Promise<EggGroup>;
	public function getGenderByName(gender: String):Promise<Gender>;
	public function getGrowthRateByName(growthRate: String):Promise<GrowthRate>;
	public function getNatureByName(nature: String):Promise<Nature>;
}

}
