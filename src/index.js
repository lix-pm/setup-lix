import { execSync } from "child_process";
import * as core from "@actions/core";

const version = core.getInput("lix-version");
execSync(`npm install -g lix${version ? `@${version}` : ""}`, {
	stdio: "inherit",
});
