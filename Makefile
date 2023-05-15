audit:
	cinc-auditor exec ${STIG_BASELINE} -t ssh://${SSH_HOST} --sudo
