class Main {
	static function main() {
		var version = js.Lib.require('@actions/core').getInput('lix-version');
		// js.Lib.require('@actions/exec').exec('yarn global add lix@$version');
		Sys.command('yarn', ['global', 'add', 'lix@$version']);
	}
}