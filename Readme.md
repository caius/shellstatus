# Caius Shell Status

_NR: Work in progress, the below is aspirational in the interest of Readme Driven Development._

Tool to figure out status of things and print it out for [Caius][] to use in his shell. See [caius/zshrc][] for shell configurations and dotfiles.

## Output

```
➡️  Vulcan | shellstatus | main | 1 stashed | 2021-08-05 09:06:07 | 40% 🔋  (4:08) | 2.6.5
1.  2.       3.            4.     5.          6.                    7.               8.
```

1. Local shell / remote shell definition
2. Machine hostname
3. Current directory
4. Current git branch, dirty workspace indicator
5. Git stash information (so Caius doesn't forget he's stashed things)
6. Current Date/Time in ISO8601
7. Battery information on laptops, %age & estimated time remaining
8. Ruby version in use in this shell

Previously this was provided through ZSH commands shelling out to other binaries to figure things out, the entrypoint of which is in <https://github.com/caius/zshrc/blob/5f451d6163f0a49eaf422886a3b4282c67b0b668/dot_zsh/functions/prompt_caius_setup>

## License

Copyright 2021 

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at <http://www.apache.org/licenses/LICENSE-2.0>

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
