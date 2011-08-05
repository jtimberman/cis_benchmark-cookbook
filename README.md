Description
====

Applies the Center for Internet Security's Benchmark at configuration recommendations Level-I.

Disclaimers and Caveats
====

This cookbook is very opinionated. It is based on my interpretation of the CIS Benchmarks.

Where appropriate, benchmark recommendations that are scorable are implemented. Recommendations that cannot be determined via automated means are not implemented. Some recommendations that fall outside the purview of Chef are not implemented, such as partioning layouts, as those are generally handled better by provisioning systems like Kickstart. Opscode provides a kickstart cookbook which can be customized as needed.

It is up to the end user to read and understand the full CIS Benchmark's recommendations and determine if this cookbook adequately meets them. Additional configuration and steps may be required to meet due dilligence requirements in a given environment.

The NOTES file in this cookbook includes additional notes about recommendations not implemented.

Though I am an Opscode employee, this cookbook is not an Opscode project. It is only supported on a best effort basis.

SELinux
----

As the CIS Benchmark recommends enabling selinux, this cookbook keeps it enabled. This may affect the functionality of other cookbooks used on the system, which may require modification for any software they install to be configured for SELinux.

CIS Benchmarks
====

You can download the CIS Benchmark's at http://cisecurity.org/.

The benchmarks used for this cookbook:

    Red Hat Enterprise Linux 5
    Version 1.1.2 June 2009
    Copyright 2001-2009, The Center for Internet Security
    feedback@cisecurity.org

Benchmarks for other platforms will be implemented in the future.

Development of this cookbook was not sponsored or endorsed by the Center for Internet Security.

Requirements
====

## Platform:

This cookbook aims to support Unix and Linux platforms benchmarked by the CIS documentation where applicable.

**Discrepency Notice**: The latest version of the respective benchmarks is used on the latest version of the respective platforms. This means that some items may not be relevant, or have changed, depending on differences.

As with any code that runs as root in the environment, a full audit should be done of the source code in the recipes.

## Cookbooks:

No additional cookbooks *required*. The recipes in this cookbook may configure resources found in other cookbooks' recipes and conflict with source config files / templates. See full audit disclaimer above.

Publicly available cookbooks of interest (on the Chef Community site, http://community.opscode.com/cookbooks):

* firewall
* iptables (will be deprecated for firewall soon)
* logstash
* ossec
* rsyslog
* selinux
* sudo
* users

Attributes
====

Minimal attributes are used.

Templates
====

Where appropriate, this cookbook will use configuration files from templates, where the original files were retrieved from the installed packages, or derived contents from the CIS Benchmark.

The template sources by default come from this cookbook.

Recipes
====

This cookbook includes a number of recipes. They are intended for modularity and to be used in other cookbooks or roles as needed.

Usage
====

The recipes in this cookbook apply the benchmark's default settings, somewhat blindly.

Version History
====

## v.0.0.1:

* Initial release.

Contributing
====

If you would like to contribute to this cookbook, please submit a pull request with your patch. 

License and Author
====

Copyright 2011, Joshua Timberman <cookbooks@housepub.org>

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
