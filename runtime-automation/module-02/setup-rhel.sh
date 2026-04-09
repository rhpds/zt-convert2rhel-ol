#!/bin/sh
echo "Starting module called module-02" >> /tmp/progress.log

sudo sed -i 's/# skip_kernel_currency_check       = false/skip_kernel_currency_check       = true/' /etc/convert2rhel.ini