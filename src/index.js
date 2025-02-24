const { execSync } = require("child_process");
const core = require("@actions/core");
const version = core.getInput("lix-version");
execSync("yarn global add lix" + (version ? `@${version}` : ""));
const path = execSync("yarn global bin").toString().replaceAll("\n", "");
core.addPath(path);
