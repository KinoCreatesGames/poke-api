typedef PokedexOptions = {
	?protocol:String,
	?hostName:String,
	?versionPath:String,
	?timeout:Int,
	?cacheLimit:Int
}

typedef PokemonSprite = {
	front_default:String
}

typedef PokemonTypeInner = {
	name:String
}

typedef PokemonType = {
	type:PokemonTypeInner
}

typedef Pokemon = {
	name:String,
	id:Int,
	height:String,
	weight:String,
	sprites:PokemonSprite,
	types:Array<PokemonType>
}

typedef GenusInfo = {
	genus:String
}

typedef FlavorText = {
	flavor_text:String
}

typedef PokemonSpecies = {
	genera:Array<GenusInfo>,
	flavor_text_entires:Array<FlavorText>
}

typedef PokemonListResult = {
	url:String,
	name:String
}

typedef PokemonList = {
	count:Int,
	results:Array<PokemonListResult>
}

typedef Berry = {
	id:Int,
	name:String,
	growth_time:Int,
	max_harvest:Int,
	natural_gift_power:Int,
	size:Int,
	smoothness:Int,
	soil_dryness:Int,
	firmness:NamedAPIResource,
	flavors:Array<FlavorMap>,
	item:NamedAPIResource,
	natural_gift_type:NamedAPIResource
}

typedef FlavorMap = {
	potency:Int,
	berry:NamedAPIResource
}

typedef BerryFirmness = {
	id:Int,
	name:String,
	berries:Array<NamedAPIResource>,
	names:Array<NameResource>
}

typedef BerryFlavor = {
	id:Int,
	name:String,
	berries:Array<FlavorMap>,
	contest_type:NamedAPIResource,
	names:Array<NameResource>
}

// Encounter Methods

typedef EncounterMethods = {
	id:Int,
	name:String,
	order:Int,
	names:Array<NameResource>
}

typedef EncounterConditions = {
	id:Int,
	name:String,
	names:Array<NameResource>,
	values:Array<NamedAPIResource>
}

typedef EncounterConditionValue = {
	id:Int,
	name:String,
	condition:NamedAPIResource,
	names:Array<NameResource>
}

// Evolution
// Machines

typedef Machine = {
	/**
	 * Identifier of this resource
	 */
	id:Int,

	/**
	 * TM or HM item that corresponds to this  machine
	 */
	item:NamedAPIResource,

	/**
	 * The move that is taught by this machine
	 */
	move:NamedAPIResource,

	/**
	 * The version group this machine applies to
	 						 * aka what game this belongs to.
	 */
	version_group:NamedAPIResource
}

typedef Effect = {
	/**
	 * The localized effect text for an API resource
	 * in a specific language.
	 */
	effect:String,

	language:NamedAPIResource
}

typedef Encounter = {
	min_level:Int,
	max_level:Int,
	conditional_values:Array<NamedAPIResource>,

	/**
	 * Percent chance of this encountering occuring
	 */
	chance:Int,

	/**
	 * The method by which this encounter happens
	 */
	method:NamedAPIResource
}

// Item Information

typedef Item = {
	id:Int,
	name:String,
	cost:Int,
	fling_power:Int,
	fling_effect:NamedAPIResource,
	attributes:Array<NamedAPIResource>,
	category:NamedAPIResource,
	effect_entries:Array<{
		effect:String,
		short_effect:String,
		language:NamedAPIResource
	}>,
	flavor_text_entries:Array<VersionGroupFlavorText>,
	game_indices:Array<{
		game_index:Int,
		generation:NamedAPIResource
	}>,
	names:Array<NameResource>,
	sprites:{
		default_:String
	},
	held_by_pokemon:Array<{
		pokemon:NamedAPIResource,
		version_details:Array<{
			rarity:Int,
			version:NamedAPIResource
		}>
	}>,
	baby_trigger_for:NamedAPIResource,
	machines:Array<MachineVersionDetail>
}

typedef ItemAttributes = {
	id:Int,
	name:String,
	description:Array<Description>,
	items:Array<NamedAPIResource>,
	names:Array<NameResource>
}

typedef ItemCategory = {
	id:Int,
	name:String,
	items:Array<NamedAPIResource>,
	names:Array<NameResource>,
	pocket:NamedAPIResource
}

typedef ItemFlingEffect = {
	id:Int,
	name:String,
	effect_entries:Array<Effect>,
	items:Array<NamedAPIResource>
}

typedef ItemPocket = {
	id:Int,
	name:String,
	categories:Array<NamedAPIResource>,
	names:Array<NameResource>
}

// Move Information

typedef Move = {
	id:Int,
	name:String,
	accuracy:Int,
	effect_chance:Int,
	pp:Int,
	priority:Int,
	power:Int,

	contest_type:NamedAPIResource,
	contest_effect:NamedAPIResource,
	generation:NamedAPIResource,
	names:Array<NameResource>,
	super_contest_effect:NamedAPIResource,
	target:NamedAPIResource,
	type:NamedAPIResource,
}

typedef MoveAilment = {
	id:Int,
	name:String,
	moves:Array<NamedAPIResource>,
	names:Array<NameResource>
}

typedef MoveStyle = {
	id:Int,
	name:String,
	names:Array<NameResource>,
}

typedef MoveCategory = {
	id:Int,
	name:String,
	moves:Array<NamedAPIResource>,
	descriptions:Array<Description>
}

typedef MoveDamage = {
	id:Int,
	name:String,
	descriptions:Array<Description>,
	moves:Array<NamedAPIResource>,
	names:Array<NameResource>
}

typedef MoveLearnMethod = {
	id:Int,
	name:String,
	descriptions:Array<Description>,
	names:Array<NameResource>,
	version_groups:Array<NamedAPIResource>
}

typedef MoveTarget = {
	id:Int,
	name:String,
	descriptions:Array<Description>,
	moves:Array<NamedAPIResource>,
	names:Array<NameResource>
}

// Contest

typedef Contest = {
	id:Int,
	name:String,
	berry_flavor:NamedAPIResource,
	names:Array<{
		name:String,
		color:String,
		language:NameResource
	}>
}

typedef ContestEffects = {
	id:Int,
	appeal:Int,
	jam:Int,
	effect_entries:Array<Effect>,
	flavor_text_entries:Array<FlavorText>
}

typedef SuperContestEffects = {
	id:Int,
	appeal:Int,
	flavor_text_entries:Array<FlavorText>,
	moves:Array<NamedAPIResource>
}

// Pokedex

typedef PokedexInfo = {
	id:Int,
	name:String,
	is_main_series:Bool,
	description:Description,
	names:Array<NameResource>,
	pokemon_entries:Array<Pokemon>,
	// TODO: Should be able to use.
	region:NamedAPIResource,
	version_groups:Array<NamedAPIResource>
}

typedef NamedAPIResource = {
	name:String,
	url:String
}

typedef NameResource = {
	name:String,
	language:NamedAPIResource
}

typedef GenerationGameIndex = {
	game_index:Int,
	generation:NamedAPIResource
}

typedef MachineVersionDetail = {
	machine:NameResource,
	version_group:NamedAPIResource
}

typedef VerboseEffect = {
	effect:String,
	short_effect:String,
	language:NamedAPIResource
}

typedef VersionGameIndex = {
	game_index:Int,
	version:NamedAPIResource
}

typedef VersionGroupFlavorText = {
	text:String,
	language:NamedAPIResource,
	version_group:NamedAPIResource
}

typedef Description = {
	description:String,
	language:NamedAPIResource
}

typedef EggGroup = {
	id:Int,
	name:String,
	names:Array<NameResource>,
	pokemon_species:Array<NamedAPIResource>
}

typedef EvolutionChain = {
	id:Int,
	baby_trigger_item: NamedAPIResource,
	chain: ChainLink
}

typedef ChainLink = {
	is_baby: Bool,
	species: NamedAPIResource,
	evolution_details: Array<EvolutionDetail>,
	evolves_to: Array<ChainLink>
}

typedef EvolutionDetail = {
	item: NamedAPIResource,
	trigger: NamedAPIResource,
	gender: Int,
	held_item: NamedAPIResource,
	known_move: NamedAPIResource,
	known_move_type: NamedAPIResource,
	location: NamedAPIResource,
	min_level: Int,
	min_happiness: Int,
	min_beauty: Int,
	min_affection: Int,
	needs_overworld_rain: Bool,
	party_species: NamedAPIResource,
	party_type: NamedAPIResource,
	relative_physical_stats: Int,
	time_of_day: String,
	trade_species: NamedAPIResource,
	turn_upside_down: Bool
}

typedef EvolutionTrigger = {
	id: Int,
	name: String,
	names: Array<NameResource>,
	pokemon_species: Array<NamedAPIResource>
}

typedef Version = {
	id: Int,
	name: String,
	names: Array<NameResource>,
	version_group: NamedAPIResource
}

typedef VersionGroup = {
	id: Int,
	name: String,
	order: Int,
	generation: NamedAPIResource,
	move_learn_methods: NamedAPIResource,
	pokedexes: NamedAPIResource,
	regions: NamedAPIResource,
	versions: NamedAPIResource
}

typedef ItemAttribute = {
	id: Int,
	name: String,
	items: NamedAPIResource,
	names: Array<NamedAPIResource>,
	descriptions: Array<Description>
}

typedef Location = {
	id: Int,
	name: String,
	region: NamedAPIResource,
	names: Array<NameResource>,
	game_indices: Array<GenerationGameIndex>,
	areas: Array<NamedAPIResource>
}

typedef LocationArea = {
	id: Int,
	name: String,
	game_index: Int,
	encounter_method_rates: Array<EncounterMethodRate>,
	location: NamedAPIResource,
	names: Array<NameResource>,
	pokemon_encounters: Array<PokemonEncounter>
}

typedef EncounterMethodRate = {
	encounter_method: NamedAPIResource,
	version_details: Array<EncounterVersionDetails>
}

typedef EncounterVersionDetails = {
	rate: Int,
	version: NamedAPIResource
}

typedef PokemonEncounter = {
	pokemon: NamedAPIResource,
	version_details: Array<VersionEncounterDetails>
}

typedef VersionEncounterDetails = {
	version: NamedAPIResource,
	max_chance: Int,
	encounter_details: Array<Encounter>
}