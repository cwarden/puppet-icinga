class icinga::service {
	icinga::service::servicegroups { [
		"apt",
		"disks",
		"interfaces",
		"kernel",
		"libs",
		"load",
		"mailq",
		"ntp",
		"procs",
		"puppet",
		"smart",
		"swap",
		"user" ]:
	}

	Nagios_service <<||>> {
		notify => Exec["fix-permissions"],
	}

	Nagios_servicegroup <||> {
		notify => Exec["fix-permissions"],
	}
}

# vim: tabstop=3