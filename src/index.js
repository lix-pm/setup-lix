import { execSync } from "child_process";
import * as core from "@actions/core";

const version = core.getInput("lix-version");
execSync("yarn global add lix" + (version ? `@${version}` : ""));
const path = execSync("yarn global bin").toString().replaceAll("\n", "");
core.addPath(path);
