import sys.FileSystem;
import js.node.ChildProcess;
import js.node.Buffer;
using StringTools;

class Main {
	static function main() {
		var core = js.Lib.require('@actions/core');
		var version = core.getInput('lix-version');
		// Sys.command('yarn', ['global', 'add', 'lix@$version']);
		trace((ChildProcess.execSync('yarn global add lix@$version'):Buffer).toString());
		var path = (ChildProcess.execSync('yarn global bin'):Buffer).toString().replace('\n', '');
		trace(FileSystem.readDirectory(path));
		trace(Sys.getEnv("PATH"));
		core.addPath(path);
		trace(Sys.getEnv("PATH"));

		
		trace((ChildProcess.execSync('lix'):Buffer).toString());
	}
}