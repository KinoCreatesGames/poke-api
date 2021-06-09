import Structs.PokedexOptions;
import haxe.Json;
import Structs.Machine;
import tink.core.Future;
import haxe.Http;

class Pokedex {
	public static inline var baseEndPoint = 'https://pokeapi.co/api/v2/';

	public function new(?pokedexOptions:PokedexOptions) {}

	public function getMachineById(id:Int):Future<Machine> {
		return loadFromUrl(baseEndPoint + 'machine/${id}').flatMap((data) -> {
			var result:Machine = Json.parse(data);
			return result;
		});
	}

	private function loadFromUrl(url:String):Future<String> {
		return Future.irreversible((handler:String -> Void) -> {
			var http = new Http(url);
			http.onData = handler;
			http.request();
		});
	}
}