class AndroidRunner
    def initialize(sn, options)
        @sn = sn
        @options = options
    end

    def run
        command = "export sn=#{@sn} ; " \
        "export apk=#{@options['apk']} ; " \
        "export port=#{@options['port']} ; " \
        "export portboot=#{@options['portboot']} ; " \
        "cucumber  -f pretty -f #{@options['report']} " \
        "-o reports/#{@device_name}.#{@options['report']}"
        `#{command} `#{}`command`#{}`#{command}`2>&1 &
    end
end

temp AndroidRunner.new (sn "9DCDU17323001936",
                        options {'boot_port' => 5000, 'apk' => 'app.apk', 'report' => 'html', 'device_name' = 'huawei'})