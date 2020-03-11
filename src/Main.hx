class Main {
	static function main() {
		var version = js.Lib.require('@actions/core').getInput('lix-version');
		Sys.command('npm', ['-g', 'i', 'lix@$version']);
	}
}