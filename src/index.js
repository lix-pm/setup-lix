import { execSync } from "child_process";

const version = core.getInput("lix-version");
execSync(`npm install -g lix${version ? `@${version}` : ""}`, {
	stdio: "inherit",
});
