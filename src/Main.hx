import js.node.ChildProcess;
import js.node.Buffer;
using StringTools;

class Main {
	static function main() {
		var core = js.Lib.require('@actions/core');
		var version = core.getInput('lix-version');
		Sys.command('yarn', ['global', 'add', 'lix@$version']);
		var path = (ChildProcess.execSync('yarn global bin'):Buffer).toString().replace('\n', '');
		core.addPath(path);
	}
}