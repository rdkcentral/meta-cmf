# A bbclass to map the processname and respective logfiles

pkg_postinst:${PN}:append() {
    process_name="${@d.getVar('BREAKPAD_LOGMAPPER_PROCLIST', True)}"
    log_files="${@d.getVar('BREAKPAD_LOGMAPPER_LOGLIST', True)}"
    file="breakpad-logmapper.conf"

    if [ ! -z "$process_name" ] && [ ! -z "$log_files" ]; then
        echo "Updating process name:$process_name and log files:$log_files to rootfs"
        echo "${process_name}=${log_files}" >> $D${sysconfdir}/${file}
    else
        echo "No Process name or No log files found"
    fi
}
