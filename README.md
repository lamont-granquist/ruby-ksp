# ruby-ksp

Ruby PEG Parser For KSP1 ConfigNode parsing.

Just example code, I have no plans on supporting or extending this.

Don't send me PRs.

This PEG Grammar is as permissive as the KSP parser, AFAIK, which parses and allows a lot of
syntax that I would consider to be horribly broken.  As a result there is a lot of broken
syntax out there.

This is a good example of a bad reading of Postel's law.  Since the KSP parser itself parses
broken syntax that means that broken syntax is common, and now every parser needs to parse
all kinds of broken syntax edge conditions.  That is not what Postel intended.

This does not and will not support ModuleManager syntax.
