from . import oot_builds

carbon_default_chan_dict = {  "carbon"   : {
                                             "images"    : ["default-chan",
                                                            "default-4rx-chan"],
                                            },
                              "carbon-carp"   : {
                                                 "images"    : ["default-chan",
                                                                "default-4rx-chan"],
                                                }
                           }

oot_builds.merge(oot_builds.supported_oot, carbon_default_chan_dict)
