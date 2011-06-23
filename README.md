Description
====

Applies the Center for Internet Security's Red Hat Benchmark at configuration recommendations Level-I.

Disclaimers and Caveats
====

Where appropriate, benchmark recommendations that are scorable are implemented. Recommendations that cannot be determined via automated means are not implemented. Some recommendations that fall outside the purview of Chef are not implemented, such as partioning layouts, as those are generally handled better by provisioning sysetms like Kickstart. Opscode provides a kickstart cookbook which can be customized as needed.

It is up to the end user to read and understand the full CIS Benchmark's recommendations and determine if this cookbook adequately meets them. Additional configuration and steps may be required to meet due dilligence requirements in a given environment.

The NOTES file in this cookbook includes additional notes about recommendations [not] implemented.

SELinux
----

As the CIS Benchmark recommends enabling selinux, this cookbook keeps it enabled. This may affect the functionality of other cookbooks used on the system, which may require modification for any software they install to be configured for SELinux.

Version History
====

## v.0.0.1:

* Initial release.

CIS Benchmarks
====

You can download the CIS Benchmark's at http://cisecurity.org/.

The benchmark used for this cookbook is:

Red Hat Enterprise Linux 5
Version 1.1.2 June 2009
Copyright 2001-2009, The Center for Internet Security
feedback@cisecurity.org

Development of this cookbook was not sponsored or endorsed by the Center for Internet Security.

Requirements
====

## Platform:

Tested on CentOS 5.6.

The recipes in this cookbook should work fine with any Red Hat family distribution including Red Hat Enterprise Linux, Scientific Linux, Fedora and probably others.

## Cookbooks:

No additional cookbooks required. The recipes in this cookbook may configure resources found in other cookbooks.

Attributes
====

No customizable attributes at this time.

Templates
====

Where appropriate, this cookbook will use configuration files from templates, where the original files were retrieved from the installed packages on CentOS 5.6.

The template sources by default come from this cookbook.

Recipes
====

This cookbook includes a number of recipes. They are intended for modularity and to be used in other cookbooks or roles as needed.

default
----

The default recipe includes all the other recipes.

ssh
----

Configures SSH per section 2.3.

Usage
====

The recipes in this cookbook apply the benchmark's default settings, somewhat blindly.

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
